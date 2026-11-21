//! Reconcile raw monotonic spans from one complete operation.
use crate::error::{Result, StudyError};
use serde::{Deserialize, Serialize};
use std::collections::{BTreeMap, BTreeSet};

#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct Span {
    pub span_id: String,
    pub parent_id: Option<String>,
    pub start_ns: u64,
    pub end_ns: u64,
    pub phase: String,
    pub execution_scope: String,
}
#[derive(Debug, PartialEq, Eq, Serialize)]
pub struct Reconciled {
    pub complete_ns: u64,
    pub classified_ns: u64,
    pub remainder_ns: u64,
    pub exclusive_ns: BTreeMap<String, u64>,
    pub per_phase_ns: BTreeMap<String, u64>,
}
fn invalid() -> StudyError {
    StudyError::InvalidInput("InvalidOperationIntervalTree".into())
}
fn phase_known(phase: &str) -> bool {
    matches!(
        phase,
        "complete"
            | "unclassified"
            | "semantic"
            | "commit"
            | "output"
            | "encoding"
            | "acquisition"
            | "property"
            | "history"
            | "versions"
            | "views"
            | "maintenance"
            | "comparison"
            | "cleanup"
    )
}
type Nodes<'s> = BTreeMap<String, &'s Span>;
type Children<'k, 's> = BTreeMap<&'k str, Vec<&'s Span>>;

fn required<T>(value: Option<T>) -> Result<T> {
    match value {
        Some(value) => Ok(value),
        None => Err(invalid()),
    }
}

fn parent_is_empty(parent: &Option<String>) -> bool {
    match parent {
        Some(value) => value.is_empty(),
        None => false,
    }
}

fn index_spans<'s>(spans: &'s [Span], scope: &str, nodes: &mut Nodes<'s>) -> Result<()> {
    for row in spans {
        if row.span_id.is_empty()
            || row.execution_scope != scope
            || row.start_ns > row.end_ns
            || !phase_known(&row.phase)
            || parent_is_empty(&row.parent_id)
            || nodes.insert(row.span_id.clone(), row).is_some()
        {
            return Err(invalid());
        }
    }
    Ok(())
}

fn collect_roots<'s>(spans: &'s [Span], roots: &mut Vec<&'s Span>) {
    for row in spans {
        if row.parent_id.is_none() {
            roots.push(row);
        }
    }
}

fn initialize_children<'k, 's>(nodes: &'k Nodes<'s>, children: &mut Children<'k, 's>) {
    for key in nodes.keys() {
        children.insert(key.as_str(), Vec::new());
    }
}

fn link_children<'k, 's>(
    spans: &'s [Span],
    root: &Span,
    nodes: &Nodes<'s>,
    children: &mut Children<'k, 's>,
) -> Result<()> {
    for row in spans {
        if row.span_id != root.span_id {
            let parent_id = required(row.parent_id.as_ref())?;
            let parent = required(nodes.get(parent_id))?;
            if row.phase == "complete"
                || row.start_ns < parent.start_ns
                || row.end_ns > parent.end_ns
            {
                return Err(invalid());
            }
            required(children.get_mut(parent_id.as_str()))?.push(row);
        }
    }
    Ok(())
}

fn append_children<'k, 's>(
    key: &str,
    children: &Children<'k, 's>,
    pending: &mut Vec<&'s str>,
) -> Result<()> {
    for child in required(children.get(key))? {
        pending.push(child.span_id.as_str());
    }
    Ok(())
}

fn trace_reachable<'k, 's>(
    root: &'s str,
    children: &Children<'k, 's>,
    seen: &mut BTreeSet<&'s str>,
) -> Result<()> {
    let mut pending = vec![root];
    while let Some(key) = pending.pop() {
        if !seen.insert(key) {
            return Err(invalid());
        }
        append_children(key, children, &mut pending)?;
    }
    Ok(())
}

fn sum_siblings(siblings: &[&Span], start_ns: u64, used: &mut u64) -> Result<()> {
    let mut boundary = start_ns;
    for child in siblings {
        if child.start_ns < boundary {
            return Err(invalid());
        }
        boundary = child.end_ns;
        *used = required(used.checked_add(child.end_ns - child.start_ns))?;
    }
    Ok(())
}

#[derive(Default)]
struct Totals {
    classified: u64,
    exclusive: u64,
}

fn reconcile_node(
    key: &str,
    row: &Span,
    siblings: &mut [&Span],
    totals: &mut Totals,
    exclusive_ns: &mut BTreeMap<String, u64>,
    per_phase_ns: &mut BTreeMap<String, u64>,
) -> Result<()> {
    siblings.sort_by_key(|s| (s.start_ns, s.end_ns, s.span_id.as_str()));
    let mut used = 0;
    sum_siblings(siblings, row.start_ns, &mut used)?;
    let exclusive = required((row.end_ns - row.start_ns).checked_sub(used))?;
    totals.exclusive = required(totals.exclusive.checked_add(exclusive))?;
    exclusive_ns.insert(key.to_owned(), exclusive);
    if !matches!(row.phase.as_str(), "complete" | "unclassified") {
        let slot = per_phase_ns.entry(row.phase.clone()).or_default();
        *slot = required(slot.checked_add(exclusive))?;
        totals.classified = required(totals.classified.checked_add(exclusive))?;
    }
    Ok(())
}

fn reconcile_nodes(
    nodes: &Nodes<'_>,
    children: &mut Children<'_, '_>,
    totals: &mut Totals,
    exclusive_ns: &mut BTreeMap<String, u64>,
    per_phase_ns: &mut BTreeMap<String, u64>,
) -> Result<()> {
    for (key, row) in nodes {
        let siblings = required(children.get_mut(key.as_str()))?;
        reconcile_node(key, row, siblings, totals, exclusive_ns, per_phase_ns)?;
    }
    Ok(())
}

pub fn reconcile(spans: &[Span], complete_ns: u64, execution_scope: &str) -> Result<Reconciled> {
    if spans.is_empty() || spans.len() > 100_000 || execution_scope.is_empty() {
        return Err(invalid());
    }
    let mut nodes = BTreeMap::new();
    index_spans(spans, execution_scope, &mut nodes)?;
    let mut roots = Vec::new();
    collect_roots(spans, &mut roots);
    if roots.len() != 1 {
        return Err(invalid());
    }
    let root = roots[0];
    if root.phase != "complete" || root.start_ns != 0 || root.end_ns != complete_ns {
        return Err(invalid());
    }
    let mut children = BTreeMap::new();
    initialize_children(&nodes, &mut children);
    link_children(spans, root, &nodes, &mut children)?;
    let mut seen = BTreeSet::new();
    trace_reachable(root.span_id.as_str(), &children, &mut seen)?;
    if seen.len() != nodes.len() {
        return Err(invalid());
    }
    let mut exclusive_ns = BTreeMap::new();
    let mut per_phase_ns = BTreeMap::new();
    let mut totals = Totals::default();
    reconcile_nodes(
        &nodes,
        &mut children,
        &mut totals,
        &mut exclusive_ns,
        &mut per_phase_ns,
    )?;
    if totals.exclusive != complete_ns {
        return Err(invalid());
    }
    Ok(Reconciled {
        complete_ns,
        classified_ns: totals.classified,
        remainder_ns: required(complete_ns.checked_sub(totals.classified))?,
        exclusive_ns,
        per_phase_ns,
    })
}
