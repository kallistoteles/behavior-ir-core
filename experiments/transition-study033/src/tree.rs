//! Untrusted persistent sparse-tree construction and authenticated byte reads.
//! These types carry no checked/certified authority and do not establish whole J.
use crate::codec::{self, Decoder, Encoder, EntityKey, EntityValue, MAGIC};
use sha2::{Digest as _, Sha256};
use std::collections::BTreeMap;

pub type Digest = [u8; 32];
pub const DEPTH: usize = 256;
pub const MAX_COUNT: u64 = 1_048_576;
const MAX_NODE_BYTES: usize = 2048;

#[derive(Debug, thiserror::Error)]
pub enum TreeError {
    #[error(transparent)]
    Encoding(#[from] crate::profile::Error),
    #[error("unavailable sparse node {0:?}")]
    Unavailable(Digest),
    #[error("corrupt sparse node: {0}")]
    Corrupt(&'static str),
    #[error("address collision between distinct full typed keys")]
    AddressCollision,
    #[error("content-address collision between distinct node bytes")]
    NodeCollision,
    #[error("sparse tree exceeds the frozen resource limit")]
    ResourceLimit,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum TreeKind {
    Live = 1,
    Used = 2,
}
impl TreeKind {
    fn decode(value: u8) -> Result<Self, TreeError> {
        match value {
            1 => Ok(Self::Live),
            2 => Ok(Self::Used),
            _ => Err(TreeError::Corrupt("tree kind")),
        }
    }
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub struct Summary {
    pub digest: Digest,
    pub count: u64,
    pub positive: bool,
    pub complete_coverage: bool,
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub enum Node {
    Leaf {
        kind: TreeKind,
        key: EntityKey,
        value: Option<EntityValue>,
        occupied: bool,
    },
    Branch {
        kind: TreeKind,
        depth: u16,
        left: Digest,
        right: Digest,
        left_count: u64,
        right_count: u64,
        total_count: u64,
        positive: bool,
        complete_coverage: bool,
    },
}
impl Node {
    pub fn empty_leaf(kind: TreeKind) -> Self {
        Self::Leaf {
            kind,
            key: EntityKey::new("E", ""),
            value: (kind == TreeKind::Live).then(|| EntityValue::new(0, "")),
            occupied: false,
        }
    }
    pub fn branch(
        kind: TreeKind,
        depth: u16,
        left: Summary,
        right: Summary,
    ) -> Result<Self, TreeError> {
        if usize::from(depth) >= DEPTH {
            return Err(TreeError::Corrupt("branch depth"));
        }
        let count = left
            .count
            .checked_add(right.count)
            .ok_or(TreeError::ResourceLimit)?;
        if count > MAX_COUNT {
            return Err(TreeError::ResourceLimit);
        }
        Ok(Self::Branch {
            kind,
            depth,
            left: left.digest,
            right: right.digest,
            left_count: left.count,
            right_count: right.count,
            total_count: count,
            positive: left.positive && right.positive,
            complete_coverage: left.complete_coverage && right.complete_coverage,
        })
    }
    fn kind(&self) -> TreeKind {
        match self {
            Self::Leaf { kind, .. } | Self::Branch { kind, .. } => *kind,
        }
    }
    fn at_depth(&self, expected: usize) -> bool {
        match self {
            Self::Leaf { .. } => expected == DEPTH,
            Self::Branch { depth, .. } => usize::from(*depth) == expected && expected < DEPTH,
        }
    }
    fn metadata(&self) -> (u64, bool, bool) {
        match self {
            Self::Leaf {
                value, occupied, ..
            } => (
                u64::from(*occupied),
                !occupied || value.as_ref().is_none_or(|v| v.x > 0),
                true,
            ),
            Self::Branch {
                total_count,
                positive,
                complete_coverage,
                ..
            } => (*total_count, *positive, *complete_coverage),
        }
    }
    pub fn encode(&self) -> Result<Vec<u8>, TreeError> {
        let mut e = Encoder::new(match self {
            Self::Leaf { .. } => 80,
            Self::Branch { .. } => 81,
        });
        e.u8(self.kind() as u8);
        match self {
            Self::Leaf {
                kind,
                key,
                value,
                occupied,
            } => {
                if key.entity != "E" || (value.is_some() != (*kind == TreeKind::Live)) {
                    return Err(TreeError::Corrupt("leaf key/value kind"));
                }
                if !occupied && self != &Self::empty_leaf(*kind) {
                    return Err(TreeError::Corrupt("noncanonical empty leaf"));
                }
                e.fixed(&codec::encode_key(key)?);
                if let Some(value) = value {
                    e.fixed(&codec::encode_value(value)?);
                }
                e.u64(u64::from(*occupied));
                e.u8(u8::from(self.metadata().1));
            }
            Self::Branch {
                depth,
                left,
                right,
                left_count,
                right_count,
                total_count,
                positive,
                complete_coverage,
                ..
            } => {
                if usize::from(*depth) >= DEPTH
                    || left_count.checked_add(*right_count) != Some(*total_count)
                {
                    return Err(TreeError::Corrupt("branch depth/count sum"));
                }
                if *total_count > MAX_COUNT {
                    return Err(TreeError::ResourceLimit);
                }
                e.fixed(&depth.to_le_bytes());
                e.fixed(left);
                e.fixed(right);
                e.u64(*left_count);
                e.u64(*right_count);
                e.u64(*total_count);
                e.u8(u8::from(*positive));
                e.u8(u8::from(*complete_coverage));
            }
        }
        Ok(e.finish(MAX_NODE_BYTES)?)
    }
    pub fn decode(bytes: &[u8]) -> Result<Self, TreeError> {
        let tag = bytes
            .get(MAGIC.len()..MAGIC.len() + 2)
            .ok_or(TreeError::Corrupt("short node"))?;
        let tag = u16::from_le_bytes([tag[0], tag[1]]);
        if tag != 80 && tag != 81 {
            return Err(TreeError::Corrupt("node tag"));
        }
        let mut d = Decoder::new(bytes, tag, MAX_NODE_BYTES)?;
        let kind = TreeKind::decode(d.u8()?)?;
        let node = if tag == 80 {
            nested_tag(&mut d, 1)?;
            let key = EntityKey::new(&d.text(codec::MAX_ID_BYTES)?, &d.text(codec::MAX_ID_BYTES)?);
            let value = if kind == TreeKind::Live {
                nested_tag(&mut d, 2)?;
                Some(EntityValue::new(
                    d.i64()?,
                    &d.text(codec::MAX_PADDING_BYTES)?,
                ))
            } else {
                None
            };
            let occupied = match d.u64()? {
                0 => false,
                1 => true,
                _ => return Err(TreeError::Corrupt("leaf count")),
            };
            let positive = d.boolean()?;
            let leaf = Self::Leaf {
                kind,
                key,
                value,
                occupied,
            };
            if positive != leaf.metadata().1 {
                return Err(TreeError::Corrupt("leaf positive flag"));
            }
            leaf
        } else {
            Self::Branch {
                kind,
                depth: u16::from_le_bytes(d.fixed()?),
                left: d.fixed()?,
                right: d.fixed()?,
                left_count: d.u64()?,
                right_count: d.u64()?,
                total_count: d.u64()?,
                positive: d.boolean()?,
                complete_coverage: d.boolean()?,
            }
        };
        d.finish()?;
        if node.encode()? != bytes {
            return Err(TreeError::Corrupt("noncanonical node bytes"));
        }
        Ok(node)
    }
    pub fn summary(&self) -> Result<Summary, TreeError> {
        let bytes = self.encode()?;
        let (count, positive, complete_coverage) = self.metadata();
        Ok(Summary {
            digest: Sha256::digest(bytes).into(),
            count,
            positive,
            complete_coverage,
        })
    }
}
fn nested_tag(d: &mut Decoder<'_>, tag: u16) -> Result<(), TreeError> {
    if d.take(MAGIC.len())? != MAGIC || u16::from_le_bytes(d.fixed()?) != tag {
        return Err(TreeError::Corrupt("nested record domain/tag"));
    }
    Ok(())
}

pub trait NodeReader {
    fn read(&self, digest: &Digest) -> Result<Vec<u8>, TreeError>;
}
pub trait NodeStore: NodeReader {
    fn insert(&mut self, bytes: Vec<u8>) -> Result<Digest, TreeError>;
}

#[derive(Debug, Default)]
pub struct MemoryNodes {
    pub nodes: BTreeMap<Digest, Vec<u8>>,
}
impl NodeReader for MemoryNodes {
    fn read(&self, digest: &Digest) -> Result<Vec<u8>, TreeError> {
        self.nodes
            .get(digest)
            .cloned()
            .ok_or(TreeError::Unavailable(*digest))
    }
}
impl NodeStore for MemoryNodes {
    fn insert(&mut self, bytes: Vec<u8>) -> Result<Digest, TreeError> {
        let digest: Digest = Sha256::digest(&bytes).into();
        match self.nodes.entry(digest) {
            std::collections::btree_map::Entry::Vacant(entry) => {
                entry.insert(bytes);
            }
            std::collections::btree_map::Entry::Occupied(entry) => {
                if entry.get() != &bytes {
                    return Err(TreeError::NodeCollision);
                }
            }
        }
        Ok(digest)
    }
}
fn load(
    reader: &impl NodeReader,
    digest: &Digest,
    kind: TreeKind,
    depth: usize,
) -> Result<Node, TreeError> {
    let bytes = reader.read(digest)?;
    if <Digest>::from(Sha256::digest(&bytes)) != *digest {
        return Err(TreeError::Corrupt("content address mismatch"));
    }
    let node = Node::decode(&bytes)?;
    if node.kind() != kind || !node.at_depth(depth) {
        return Err(TreeError::Corrupt("node kind/depth context"));
    }
    Ok(node)
}
fn store_node(store: &mut impl NodeStore, node: &Node) -> Result<Summary, TreeError> {
    let summary = node.summary()?;
    if store.insert(node.encode()?)? != summary.digest {
        return Err(TreeError::Corrupt("store returned wrong address"));
    }
    Ok(summary)
}
fn address(key: &EntityKey) -> Result<Digest, TreeError> {
    Ok(Sha256::digest(codec::encode_key(key)?).into())
}
fn right(address: &Digest, depth: usize) -> bool {
    address[depth / 8] & (1 << (7 - depth % 8)) != 0
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub struct Root {
    pub kind: TreeKind,
    pub summary: Summary,
}
#[derive(Debug, Clone)]
pub struct Opening {
    pub leaf: Node,
    pub siblings: Vec<Node>,
}
#[derive(Debug, Clone, PartialEq, Eq)]
pub enum LeafValue {
    Absent,
    Live(EntityValue),
    Used,
}
#[derive(Debug)]
pub struct Update {
    pub after: Root,
    pub before: Opening,
    pub nodes_written: usize,
}

impl Root {
    pub fn empty(kind: TreeKind, store: &mut impl NodeStore) -> Result<Self, TreeError> {
        let mut summary = store_node(store, &Node::empty_leaf(kind))?;
        for depth in (0..DEPTH).rev() {
            summary = store_node(store, &Node::branch(kind, depth as u16, summary, summary)?)?;
        }
        Ok(Self { kind, summary })
    }
    pub fn open(&self, reader: &impl NodeReader, key: &EntityKey) -> Result<Opening, TreeError> {
        let path = address(key)?;
        let mut current = load(reader, &self.summary.digest, self.kind, 0)?;
        if current.summary()? != self.summary {
            return Err(TreeError::Corrupt("root metadata mismatch"));
        }
        let mut siblings = Vec::with_capacity(DEPTH);
        for depth in 0..DEPTH {
            let Node::Branch {
                left,
                right: right_hash,
                ..
            } = &current
            else {
                return Err(TreeError::Corrupt("short branch path"));
            };
            let left_node = load(reader, left, self.kind, depth + 1)?;
            let right_node = load(reader, right_hash, self.kind, depth + 1)?;
            if Node::branch(
                self.kind,
                depth as u16,
                left_node.summary()?,
                right_node.summary()?,
            )? != current
            {
                return Err(TreeError::Corrupt("unauthenticated child summary"));
            }
            if right(&path, depth) {
                siblings.push(left_node);
                current = right_node;
            } else {
                siblings.push(right_node);
                current = left_node;
            }
        }
        let opening = Opening {
            leaf: current,
            siblings,
        };
        opening.verify(self, key)?;
        Ok(opening)
    }
    pub fn put(
        &self,
        store: &mut impl NodeStore,
        key: &EntityKey,
        value: Option<EntityValue>,
    ) -> Result<Update, TreeError> {
        if key.entity != "E" || value.is_some() != (self.kind == TreeKind::Live) {
            return Err(TreeError::Corrupt("update key/value kind"));
        }
        let before = self.open(store, key)?;
        let existing = before.verify(self, key)?;
        if matches!((&existing,&value),(LeafValue::Live(old),Some(new)) if old==new)
            || existing == LeafValue::Used
        {
            return Ok(Update {
                after: self.clone(),
                before,
                nodes_written: 0,
            });
        }
        let path = address(key)?;
        let leaf = Node::Leaf {
            kind: self.kind,
            key: key.clone(),
            value,
            occupied: true,
        };
        let mut summary = store_node(store, &leaf)?;
        for depth in (0..DEPTH).rev() {
            let sibling = before.siblings[depth].summary()?;
            let (left, right_summary) = if right(&path, depth) {
                (sibling, summary)
            } else {
                (summary, sibling)
            };
            summary = store_node(
                store,
                &Node::branch(self.kind, depth as u16, left, right_summary)?,
            )?;
        }
        Ok(Update {
            after: Self {
                kind: self.kind,
                summary,
            },
            before,
            nodes_written: DEPTH + 1,
        })
    }
}
impl Opening {
    pub fn verify(&self, expected: &Root, key: &EntityKey) -> Result<LeafValue, TreeError> {
        if self.siblings.len() != DEPTH
            || self.leaf.kind() != expected.kind
            || !self.leaf.at_depth(DEPTH)
        {
            return Err(TreeError::Corrupt("opening shape"));
        }
        let path = address(key)?;
        let mut summary = self.leaf.summary()?;
        for depth in (0..DEPTH).rev() {
            let sibling = &self.siblings[depth];
            if sibling.kind() != expected.kind || !sibling.at_depth(depth + 1) {
                return Err(TreeError::Corrupt("sibling kind/depth"));
            }
            let sibling = sibling.summary()?;
            let (left, right_summary) = if right(&path, depth) {
                (sibling, summary)
            } else {
                (summary, sibling)
            };
            summary = Node::branch(expected.kind, depth as u16, left, right_summary)?.summary()?;
        }
        if summary != expected.summary {
            return Err(TreeError::Corrupt("opening root mismatch"));
        }
        match &self.leaf {
            Node::Leaf {
                occupied: false, ..
            } => Ok(LeafValue::Absent),
            Node::Leaf {
                key: stored, value, ..
            } => {
                if stored != key {
                    return Err(TreeError::AddressCollision);
                }
                Ok(match value {
                    Some(value) => LeafValue::Live(value.clone()),
                    None => LeafValue::Used,
                })
            }
            _ => Err(TreeError::Corrupt("non-leaf opening tip")),
        }
    }
}
