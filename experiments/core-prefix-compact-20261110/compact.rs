//! Transport only: decoding cannot construct a ValidBasis.
use crate::{
    auth::{Auth, DEPTH, Opening, Row, Summary},
    kernel::Proposal,
};
type Result<T> = std::result::Result<T, &'static str>;
const MAGIC: &[u8; 4] = b"CK01";
const BOUND: usize = 262_144;
fn string(out: &mut Vec<u8>, s: &str) -> Result<()> {
    if s.len() > 64 {
        return Err("StringBound");
    }
    out.push(s.len() as u8);
    out.extend(s.as_bytes());
    Ok(())
}
fn summary(out: &mut Vec<u8>, s: Summary) {
    out.extend(s.digest);
    out.extend(s.count.to_le_bytes());
    out.extend([u8::from(s.positive), u8::from(s.complete_coverage)]);
}
struct Reader<'a> {
    raw: &'a [u8],
    pos: usize,
}
impl<'a> Reader<'a> {
    fn take(&mut self, n: usize) -> Result<&'a [u8]> {
        let end = self.pos.checked_add(n).ok_or("LengthOverflow")?;
        let result = self.raw.get(self.pos..end).ok_or("Truncated")?;
        self.pos = end;
        Ok(result)
    }
    fn byte(&mut self) -> Result<u8> {
        Ok(self.take(1)?[0])
    }
    fn boolean(&mut self) -> Result<bool> {
        match self.byte()? {
            0 => Ok(false),
            1 => Ok(true),
            _ => Err("BooleanTag"),
        }
    }
    fn string(&mut self) -> Result<String> {
        let n = self.byte()? as usize;
        if n > 64 {
            return Err("StringBound");
        }
        String::from_utf8(self.take(n)?.to_vec()).map_err(|_| "Utf8")
    }
    fn summary(&mut self) -> Result<Summary> {
        // All fixed slices are checked by take; conversions cannot change size.
        Ok(Summary {
            digest: self.take(32)?.try_into().map_err(|_| "Digest")?,
            count: u64::from_le_bytes(self.take(8)?.try_into().map_err(|_| "Count")?),
            positive: self.boolean()?,
            complete_coverage: self.boolean()?,
        })
    }
}
pub fn encode(p: &Proposal, auth: &Auth) -> Result<Vec<u8>> {
    if p.paths.len() > 2 {
        return Err("PathBound");
    }
    let mut out = MAGIC.to_vec();
    out.extend(p.request_binding);
    out.push(p.paths.len() as u8);
    for path in &p.paths {
        if !(1..=2).contains(&path.kind) || path.siblings.len() != DEPTH {
            return Err("PathShape");
        }
        out.push(path.kind);
        string(&mut out, &path.id)?;
        match &path.leaf {
            None => out.push(0),
            Some(row) => {
                out.push(1);
                string(&mut out, &row.id)?;
                out.extend(row.x.to_le_bytes());
            }
        }
        let mut bitmap = [0u8; 32];
        for (depth, sibling) in path.siblings.iter().enumerate() {
            if *sibling != auth.empty(path.kind, depth + 1) {
                bitmap[depth / 8] |= 1 << (depth % 8);
            }
        }
        out.extend(bitmap);
        for (depth, sibling) in path.siblings.iter().enumerate() {
            if bitmap[depth / 8] & (1 << (depth % 8)) != 0 {
                summary(&mut out, *sibling);
            }
        }
    }
    summary(&mut out, p.after_live);
    summary(&mut out, p.after_used);
    let outcome = serde_json::to_vec(&p.outcome).map_err(|_| "OutcomeEncoding")?;
    if outcome.len() > 16_384 {
        return Err("OutcomeBound");
    }
    out.extend((outcome.len() as u32).to_le_bytes());
    out.extend(outcome);
    if out.len() > BOUND {
        return Err("WireBound");
    }
    Ok(out)
}
pub fn decode(raw: &[u8], auth: &Auth) -> Result<Proposal> {
    if raw.len() > BOUND {
        return Err("WireBound");
    }
    let mut r = Reader { raw, pos: 0 };
    if r.take(4)? != MAGIC {
        return Err("Magic");
    }
    let request_binding = r.take(32)?.try_into().map_err(|_| "Digest")?;
    let n = r.byte()?;
    if n > 2 {
        return Err("PathBound");
    }
    let mut paths = Vec::with_capacity(n as usize);
    for _ in 0..n {
        let kind = r.byte()?;
        if !(1..=2).contains(&kind) {
            return Err("TreeKind");
        }
        let id = r.string()?;
        let leaf = match r.byte()? {
            0 => None,
            1 => Some(Row {
                id: r.string()?,
                x: i64::from_le_bytes(r.take(8)?.try_into().map_err(|_| "Int64")?),
            }),
            _ => return Err("LeafTag"),
        };
        let bitmap = r.take(32)?.to_vec();
        let mut siblings = Vec::with_capacity(DEPTH);
        for depth in 0..DEPTH {
            let empty = auth.empty(kind, depth + 1);
            siblings.push(if bitmap[depth / 8] & (1 << (depth % 8)) == 0 {
                empty
            } else {
                let supplied = r.summary()?;
                if supplied == empty {
                    return Err("ExplicitDefaultSibling");
                }
                supplied
            });
        }
        paths.push(Opening {
            kind,
            id,
            leaf,
            siblings,
        });
    }
    let after_live = r.summary()?;
    let after_used = r.summary()?;
    let length = u32::from_le_bytes(r.take(4)?.try_into().map_err(|_| "OutcomeLength")?) as usize;
    if length > 16_384 {
        return Err("OutcomeBound");
    }
    let outcome = serde_json::from_slice(r.take(length)?).map_err(|_| "OutcomeEncoding")?;
    if r.pos != raw.len() {
        return Err("TrailingBytes");
    }
    Ok(Proposal {
        request_binding,
        paths,
        outcome,
        after_live,
        after_used,
    })
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::auth::Work;
    fn fixtures() -> (Auth, Vec<Proposal>) {
        let auth = Auth::new(&mut Work::default()).unwrap();
        let proposals = [
            include_bytes!(
                "../core-prefix-proof-20261110/results/native-input-001/proposal-0.json"
            )
            .as_slice(),
            include_bytes!(
                "../core-prefix-proof-20261110/results/native-input-001/proposal-1.json"
            )
            .as_slice(),
        ]
        .into_iter()
        .map(|raw| serde_json::from_slice(raw).unwrap())
        .collect();
        (auth, proposals)
    }
    #[test]
    fn complete_proposals_roundtrip_and_shrink() {
        let (auth, proposals) = fixtures();
        for p in proposals {
            let raw = encode(&p, &auth).unwrap();
            assert!(raw.len() < 2048);
            assert_eq!(
                serde_json::to_value(decode(&raw, &auth).unwrap()).unwrap(),
                serde_json::to_value(&p).unwrap()
            );
        }
    }
    #[test]
    fn truncation_trailing_unknown_and_bounds_are_rejected() {
        let (auth, proposals) = fixtures();
        let raw = encode(&proposals[0], &auth).unwrap();
        for n in 0..raw.len() {
            assert!(decode(&raw[..n], &auth).is_err(), "prefix {n}");
        }
        let mut trailing = raw.clone();
        trailing.push(0);
        assert!(decode(&trailing, &auth).is_err());
        let mut wrong = raw.clone();
        wrong[0] ^= 1;
        assert!(decode(&wrong, &auth).is_err());
        let mut paths = raw;
        paths[36] = 255;
        assert!(decode(&paths, &auth).is_err());
        assert!(decode(&vec![0; 262145], &auth).is_err());
    }
    #[test]
    fn all_summary_fields_survive_transport_without_repair() {
        let (auth, mut proposals) = fixtures();
        let p = &mut proposals[0];
        p.paths[0].siblings[200].digest[9] ^= 1;
        p.paths[0].siblings[200].count = 7;
        p.paths[0].siblings[200].positive = false;
        p.paths[0].siblings[200].complete_coverage = false;
        p.request_binding[0] ^= 1;
        p.after_live.count = 42;
        let decoded = decode(&encode(p, &auth).unwrap(), &auth).unwrap();
        assert_eq!(
            serde_json::to_value(decoded).unwrap(),
            serde_json::to_value(p).unwrap()
        );
    }
    #[test]
    fn same_entire_prefix_journal() {
        let (auth, proposals) = fixtures();
        let inputs: Vec<Vec<u8>> = proposals
            .iter()
            .map(|p| encode(p, &auth).unwrap())
            .collect();
        let actual = crate::prefix_logic::run(&inputs.try_into().unwrap());
        assert_eq!(
            actual.as_slice(),
            include_bytes!("../core-prefix-proof-20261110/results/native-input-001/expected.json")
        );
    }
    #[test]
    fn explicit_default_and_invalid_boolean_rejected() {
        let (auth, proposals) = fixtures();
        let mut raw = encode(&proposals[0], &auth).unwrap();
        // First path is kind1/id b, absent leaf; bitmap begins at byte41.
        assert_eq!(&raw[37..41], &[1, 1, b'b', 0]);
        raw[41] |= 1;
        let mut value = vec![];
        summary(&mut value, auth.empty(1, 1));
        raw.splice(73..73, value);
        assert!(matches!(decode(&raw, &auth), Err("ExplicitDefaultSibling")));
        let mut raw = encode(&proposals[0], &auth).unwrap();
        let last = raw.len() - 1;
        raw[last] = 0; // Corrupt outcome JSON.
        assert!(decode(&raw, &auth).is_err());
        let mut out = vec![];
        summary(&mut out, auth.empty(1, 1));
        out[40] = 2;
        assert!(matches!(
            Reader { raw: &out, pos: 0 }.summary(),
            Err("BooleanTag")
        ));
    }
    #[test]
    fn compact_forgery_is_rejected_by_actual_kernel() {
        use crate::{
            auth::Row,
            kernel::{Action, Kernel},
        };
        let k = Kernel::new(2, &mut Work::default()).unwrap();
        let basis = k
            .initialize(
                &[Row {
                    id: "a".into(),
                    x: 1,
                }],
                &["a".into()],
                &mut Work::default(),
            )
            .unwrap();
        let request = basis.request("prefix-create", Action::Create { id: "b".into() });
        let (_, proposals) = fixtures();
        let mut p = decode(&encode(&proposals[0], &k.auth).unwrap(), &k.auth).unwrap();
        assert!(k.check(&basis, &request, &p, &mut Work::default()).is_ok());
        p.paths[0].siblings[200].digest[0] ^= 1;
        let p = decode(&encode(&p, &k.auth).unwrap(), &k.auth).unwrap();
        assert!(k.check(&basis, &request, &p, &mut Work::default()).is_err());
    }
}
