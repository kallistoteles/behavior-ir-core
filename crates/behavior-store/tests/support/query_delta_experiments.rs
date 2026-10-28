//! Test-only finite-map experiment. Completeness validation is intentionally O(N),
//! so this is not a Store fast path or an end-to-end performance result.
use std::collections::{BTreeMap, BTreeSet};
#[derive(Clone, Debug)]
pub struct Delta {
    pub id: String,
    pub before: Option<i64>,
    pub after: Option<i64>,
}
pub fn filtered_count(
    old: &BTreeMap<String, i64>,
    next: &BTreeMap<String, i64>,
    delta: &[Delta],
    capture_before: i64,
    capture_after: i64,
    retired: &BTreeSet<String>,
) -> Result<usize, &'static str> {
    if capture_before != capture_after {
        return Err("changed-capture");
    }
    let mut seen = BTreeSet::new();
    let mut rebuilt = old.clone();
    let mut count = i128::try_from(old.values().filter(|x| **x == capture_before).count())
        .map_err(|_| "count-overflow")?;
    for d in delta {
        if !seen.insert(&d.id) {
            return Err("duplicate-identity");
        }
        if old.get(&d.id).copied() != d.before {
            return Err("stale-before");
        }
        if d.before.is_none() && d.after.is_some() && retired.contains(&d.id) {
            return Err("retired-identity");
        }
        count -= i128::from(d.before == Some(capture_before));
        count += i128::from(d.after == Some(capture_before));
        if let Some(value) = d.after {
            rebuilt.insert(d.id.clone(), value);
        } else {
            rebuilt.remove(&d.id);
        }
    }
    if &rebuilt != next {
        return Err("incomplete-delta");
    }
    usize::try_from(count).map_err(|_| "count-overflow")
}
