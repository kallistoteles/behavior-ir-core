//! Same 256-level authenticated format as033; new compressed in-memory storage.
//! No authority is attached to a producer tree or an opening.
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use std::sync::Arc;

pub type Hash = [u8; 32];
pub type Result<T> = std::result::Result<T, &'static str>;
pub const DEPTH: usize = 256;
pub const MAX_COUNT: u64 = 1_048_576;
const MAGIC: &[u8] = b"core033.semantic.v1\0";

#[derive(Default, Debug, Clone, Serialize)]
pub struct Work {
    pub hashes: u64,
    pub branches: u64,
    pub paths: u64,
    pub inventory_rows: u64,
}
pub fn hash(bytes: &[u8], work: &mut Work) -> Hash {
    work.hashes += 1;
    Sha256::digest(bytes).into()
}
pub fn bit(address: Hash, depth: usize) -> bool {
    address[depth / 8] & (1 << (7 - depth % 8)) != 0
}
fn head(tag: u16) -> Vec<u8> {
    [MAGIC, &tag.to_le_bytes()].concat()
}
fn text(out: &mut Vec<u8>, value: &str) {
    out.extend((value.len() as u32).to_le_bytes());
    out.extend(value.as_bytes());
}
pub fn key_bytes(id: &str) -> Result<Vec<u8>> {
    if id.len() > 64 {
        return Err("IdBound");
    }
    let mut out = head(1);
    text(&mut out, "E");
    text(&mut out, id);
    Ok(out)
}
pub fn address(id: &str, work: &mut Work) -> Result<Hash> {
    Ok(hash(&key_bytes(id)?, work))
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Summary {
    pub digest: Hash,
    pub count: u64,
    pub positive: bool,
    pub complete_coverage: bool,
}
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Row {
    pub id: String,
    pub x: i64,
}
#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Opening {
    pub kind: u8,
    pub id: String,
    pub leaf: Option<Row>,
    /// Root to leaf: one sibling per original depth, including empty depths.
    pub siblings: Vec<Summary>,
}

#[derive(Clone)]
pub struct Auth {
    empty: [Vec<Summary>; 2],
}
impl Auth {
    pub fn new(work: &mut Work) -> Result<Self> {
        let mut result = Self {
            empty: [vec![], vec![]],
        };
        for kind in 1..=2 {
            let leaf = Self::leaf(kind, None, work)?;
            let mut values = vec![leaf; DEPTH + 1];
            for depth in (0..DEPTH).rev() {
                values[depth] =
                    Self::branch(kind, depth, values[depth + 1], values[depth + 1], work)?;
            }
            result.empty[(kind - 1) as usize] = values;
        }
        Ok(result)
    }
    pub fn empty(&self, kind: u8, depth: usize) -> Summary {
        self.empty[(kind - 1) as usize][depth]
    }
    pub fn leaf(kind: u8, row: Option<&Row>, work: &mut Work) -> Result<Summary> {
        if !(1..=2).contains(&kind) {
            return Err("TreeKind");
        }
        let mut bytes = head(80);
        bytes.push(kind);
        bytes.extend(key_bytes(row.map_or("", |r| r.id.as_str()))?);
        if kind == 1 {
            bytes.extend(head(2));
            bytes.extend(row.map_or(0, |r| r.x).to_le_bytes());
            text(&mut bytes, "");
        } else if row.is_some_and(|r| r.x != 0) {
            return Err("UsedLeafValue");
        }
        let count = u64::from(row.is_some());
        let positive = kind == 2 || row.is_none_or(|r| r.x > 0);
        bytes.extend(count.to_le_bytes());
        bytes.push(u8::from(positive));
        Ok(Summary {
            digest: hash(&bytes, work),
            count,
            positive,
            complete_coverage: true,
        })
    }
    pub fn branch(
        kind: u8,
        depth: usize,
        left: Summary,
        right: Summary,
        work: &mut Work,
    ) -> Result<Summary> {
        if !(1..=2).contains(&kind) || depth >= DEPTH {
            return Err("BranchDomain");
        }
        let count = left
            .count
            .checked_add(right.count)
            .filter(|c| *c <= MAX_COUNT)
            .ok_or("CountBound")?;
        let positive = left.positive && right.positive;
        let complete_coverage = left.complete_coverage && right.complete_coverage;
        let mut bytes = head(81);
        bytes.push(kind);
        bytes.extend((depth as u16).to_le_bytes());
        bytes.extend(left.digest);
        bytes.extend(right.digest);
        bytes.extend(left.count.to_le_bytes());
        bytes.extend(right.count.to_le_bytes());
        bytes.extend(count.to_le_bytes());
        bytes.extend([u8::from(positive), u8::from(complete_coverage)]);
        work.branches += 1;
        Ok(Summary {
            digest: hash(&bytes, work),
            count,
            positive,
            complete_coverage,
        })
    }
    fn pad(
        &self,
        kind: u8,
        address: Hash,
        from: usize,
        to: usize,
        mut value: Summary,
        work: &mut Work,
    ) -> Result<Summary> {
        for depth in (to..from).rev() {
            let empty = self.empty(kind, depth + 1);
            value = if bit(address, depth) {
                Self::branch(kind, depth, empty, value, work)?
            } else {
                Self::branch(kind, depth, value, empty, work)?
            };
        }
        Ok(value)
    }
    pub fn fold(&self, opening: &Opening, leaf: Option<&Row>, work: &mut Work) -> Result<Summary> {
        if !(1..=2).contains(&opening.kind) || opening.siblings.len() != DEPTH {
            return Err("PathShape");
        }
        if leaf.is_some_and(|r| r.id != opening.id) {
            return Err("LeafKey");
        }
        let address = address(&opening.id, work)?;
        let mut value = Self::leaf(opening.kind, leaf, work)?;
        for depth in (0..DEPTH).rev() {
            let sibling = opening.siblings[depth];
            value = if bit(address, depth) {
                Self::branch(opening.kind, depth, sibling, value, work)?
            } else {
                Self::branch(opening.kind, depth, value, sibling, work)?
            };
        }
        Ok(value)
    }
    pub fn verify(
        &self,
        root: Summary,
        opening: &Opening,
        kind: u8,
        id: &str,
        work: &mut Work,
    ) -> Result<()> {
        if opening.kind != kind || opening.id != id {
            return Err("OpeningSubject");
        }
        work.paths += 1;
        if self.fold(opening, opening.leaf.as_ref(), work)? != root {
            return Err("OpeningRoot");
        }
        Ok(())
    }
}

// Persist only divergence nodes and leaves. Padding still hashes every original
// depth; the storage compression does not change a root or a witness meaning.
#[derive(Clone)]
struct Node {
    start: usize,
    pivot: usize,
    address: Hash,
    summary: Summary,
    core: Summary,
    inner: Inner,
}
#[derive(Clone)]
enum Inner {
    Leaf(Row),
    Branch(Arc<Node>, Arc<Node>),
}
#[derive(Clone)]
pub struct Tree {
    kind: u8,
    node: Option<Arc<Node>>,
}
impl Tree {
    pub fn new(kind: u8) -> Self {
        assert!((1..=2).contains(&kind));
        Self { kind, node: None }
    }
    pub fn summary(&self, auth: &Auth) -> Summary {
        self.node
            .as_ref()
            .map_or(auth.empty(self.kind, 0), |n| n.summary)
    }
    fn leaf(
        &self,
        auth: &Auth,
        start: usize,
        row: Row,
        at: Hash,
        work: &mut Work,
    ) -> Result<Arc<Node>> {
        let core = Auth::leaf(self.kind, Some(&row), work)?;
        let summary = auth.pad(self.kind, at, DEPTH, start, core, work)?;
        Ok(Arc::new(Node {
            start,
            pivot: DEPTH,
            address: at,
            summary,
            core,
            inner: Inner::Leaf(row),
        }))
    }
    fn branch(
        &self,
        auth: &Auth,
        start: usize,
        pivot: usize,
        left: Arc<Node>,
        right: Arc<Node>,
        work: &mut Work,
    ) -> Result<Arc<Node>> {
        let core = Auth::branch(self.kind, pivot, left.summary, right.summary, work)?;
        let at = left.address;
        let summary = auth.pad(self.kind, at, pivot, start, core, work)?;
        Ok(Arc::new(Node {
            start,
            pivot,
            address: at,
            summary,
            core,
            inner: Inner::Branch(left, right),
        }))
    }
    fn insert(
        &self,
        auth: &Auth,
        old: Option<&Arc<Node>>,
        start: usize,
        row: Row,
        at: Hash,
        work: &mut Work,
    ) -> Result<Arc<Node>> {
        let Some(old) = old else {
            return self.leaf(auth, start, row, at, work);
        };
        let mismatch = (start..old.pivot).find(|d| bit(old.address, *d) != bit(at, *d));
        if let Some(pivot) = mismatch {
            let rebased = Arc::new(Node {
                start: pivot + 1,
                summary: auth.pad(self.kind, old.address, old.pivot, pivot + 1, old.core, work)?,
                ..(**old).clone()
            });
            let new = self.leaf(auth, pivot + 1, row, at, work)?;
            return if bit(at, pivot) {
                self.branch(auth, start, pivot, rebased, new, work)
            } else {
                self.branch(auth, start, pivot, new, rebased, work)
            };
        }
        match &old.inner {
            Inner::Leaf(previous) => {
                if previous.id != row.id {
                    return Err("AddressCollision");
                }
                self.leaf(auth, start, row, at, work)
            }
            Inner::Branch(left, right) => {
                if bit(at, old.pivot) {
                    let changed = self.insert(auth, Some(right), old.pivot + 1, row, at, work)?;
                    self.branch(auth, start, old.pivot, left.clone(), changed, work)
                } else {
                    let changed = self.insert(auth, Some(left), old.pivot + 1, row, at, work)?;
                    self.branch(auth, start, old.pivot, changed, right.clone(), work)
                }
            }
        }
    }
    pub fn put(&self, auth: &Auth, row: Row, work: &mut Work) -> Result<Self> {
        let at = address(&row.id, work)?;
        Ok(Self {
            kind: self.kind,
            node: Some(self.insert(auth, self.node.as_ref(), 0, row, at, work)?),
        })
    }
    pub fn opening(&self, auth: &Auth, id: &str, work: &mut Work) -> Result<Opening> {
        let at = address(id, work)?;
        let mut siblings = (0..DEPTH)
            .map(|d| auth.empty(self.kind, d + 1))
            .collect::<Vec<_>>();
        let mut current = self.node.as_ref();
        let mut leaf = None;
        while let Some(node) = current {
            if let Some(depth) =
                (node.start..node.pivot).find(|d| bit(at, *d) != bit(node.address, *d))
            {
                siblings[depth] = auth.pad(
                    self.kind,
                    node.address,
                    node.pivot,
                    depth + 1,
                    node.core,
                    work,
                )?;
                break;
            }
            match &node.inner {
                Inner::Leaf(value) => {
                    if value.id != id {
                        return Err("AddressCollision");
                    }
                    leaf = Some(value.clone());
                    break;
                }
                Inner::Branch(left, right) => {
                    let (next, other) = if bit(at, node.pivot) {
                        (right, left)
                    } else {
                        (left, right)
                    };
                    siblings[node.pivot] = other.summary;
                    current = Some(next);
                }
            }
        }
        Ok(Opening {
            kind: self.kind,
            id: id.into(),
            leaf,
            siblings,
        })
    }
}
