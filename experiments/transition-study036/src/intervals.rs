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
// Graph handles are input indices, never references stored inside another borrow.
type Nodes = BTreeMap<String, usize>;
type Children = BTreeMap<usize, Vec<usize>>;

fn required(value: Option<u64>) -> Result<u64> {
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

fn index_spans(spans: &[Span], scope: &str, nodes: &mut Nodes) -> Result<()> {
    let mut index = 0;
    while index < spans.len() {
        let row = &spans[index];
        if row.span_id.is_empty()
            || row.execution_scope != scope
            || row.start_ns > row.end_ns
            || !phase_known(&row.phase)
            || parent_is_empty(&row.parent_id)
            || nodes.insert(row.span_id.clone(), index).is_some()
        {
            return Err(invalid());
        }
        index += 1;
    }
    Ok(())
}

fn span_is_root(row: &Span) -> bool {
    row.parent_id.is_none()
}

fn collect_roots(spans: &[Span], roots: &mut Vec<usize>) {
    let mut index = 0;
    while index < spans.len() {
        if span_is_root(&spans[index]) {
            roots.push(index);
        }
        index += 1;
    }
}

fn initialize_children(count: usize, children: &mut Children) {
    let mut index = 0;
    while index < count {
        children.insert(index, Vec::new());
        index += 1;
    }
}

fn checked_parent(spans: &[Span], index: usize, nodes: &Nodes) -> Result<usize> {
    let row = &spans[index];
    let parent_id = match &row.parent_id {
        Some(value) => value,
        None => return Err(invalid()),
    };
    let parent_index = match nodes.get(parent_id) {
        Some(value) => *value,
        None => return Err(invalid()),
    };
    let parent = &spans[parent_index];
    if row.phase == "complete" || row.start_ns < parent.start_ns || row.end_ns > parent.end_ns {
        return Err(invalid());
    }
    Ok(parent_index)
}

fn append_child(children: &mut Children, parent_index: usize, index: usize) -> Result<()> {
    match children.get_mut(&parent_index) {
        Some(siblings) => siblings.push(index),
        None => return Err(invalid()),
    }
    Ok(())
}

fn link_children(
    spans: &[Span],
    root_index: usize,
    nodes: &Nodes,
    children: &mut Children,
) -> Result<()> {
    let mut index = 0;
    while index < spans.len() {
        if index != root_index {
            let parent_index = checked_parent(spans, index, nodes)?;
            append_child(children, parent_index, index)?;
        }
        index += 1;
    }
    Ok(())
}

fn append_children(key: usize, children: &Children, pending: &mut Vec<usize>) -> Result<()> {
    let siblings = match children.get(&key) {
        Some(value) => value,
        None => return Err(invalid()),
    };
    let mut index = 0;
    while index < siblings.len() {
        pending.push(siblings[index]);
        index += 1;
    }
    Ok(())
}

fn trace_reachable(root: usize, children: &Children, seen: &mut BTreeSet<usize>) -> Result<()> {
    let mut pending = vec![root];
    while let Some(key) = pending.pop() {
        if !seen.insert(key) {
            return Err(invalid());
        }
        append_children(key, children, &mut pending)?;
    }
    Ok(())
}

type OrderedSpan = (u64, u64, String);

fn order_siblings(spans: &[Span], indices: &[usize], ordered: &mut Vec<OrderedSpan>) {
    let mut index = 0;
    while index < indices.len() {
        let row = &spans[indices[index]];
        ordered.push((row.start_ns, row.end_ns, row.span_id.clone()));
        index += 1;
    }
    ordered.sort();
}

fn sum_siblings(siblings: &[OrderedSpan], start_ns: u64, used: &mut u64) -> Result<()> {
    let mut boundary = start_ns;
    let mut index = 0;
    while index < siblings.len() {
        let child = &siblings[index];
        if child.0 < boundary {
            return Err(invalid());
        }
        boundary = child.1;
        *used = required(used.checked_add(child.1 - child.0))?;
        index += 1;
    }
    Ok(())
}

#[derive(Default)]
struct Totals {
    classified: u64,
    exclusive: u64,
    exclusive_ns: BTreeMap<String, u64>,
    per_phase_ns: BTreeMap<String, u64>,
}

fn classified_phase(phase: &str) -> bool {
    !matches!(phase, "complete" | "unclassified")
}

fn add_phase_total(phases: &mut BTreeMap<String, u64>, phase: &str, exclusive: u64) -> Result<()> {
    let slot = phases.entry(phase.to_owned()).or_default();
    *slot = required(slot.checked_add(exclusive))?;
    Ok(())
}

fn classify_node(phase: &str, exclusive: u64, totals: &mut Totals) -> Result<()> {
    if classified_phase(phase) {
        add_phase_total(&mut totals.per_phase_ns, phase, exclusive)?;
        totals.classified = required(totals.classified.checked_add(exclusive))?;
    }
    Ok(())
}

fn reconcile_node(row: &Span, siblings: &[OrderedSpan], totals: &mut Totals) -> Result<()> {
    let mut used = 0;
    sum_siblings(siblings, row.start_ns, &mut used)?;
    let exclusive = required((row.end_ns - row.start_ns).checked_sub(used))?;
    totals.exclusive = required(totals.exclusive.checked_add(exclusive))?;
    totals.exclusive_ns.insert(row.span_id.clone(), exclusive);
    classify_node(&row.phase, exclusive, totals)?;
    Ok(())
}

fn reconcile_nodes(
    spans: &[Span],
    nodes: &Nodes,
    children: &Children,
    totals: &mut Totals,
) -> Result<()> {
    // Preserve the old lexical node order, including its first-error boundary.
    for index in nodes.values() {
        let siblings = match children.get(index) {
            Some(value) => value,
            None => return Err(invalid()),
        };
        let mut ordered = Vec::new();
        order_siblings(spans, siblings, &mut ordered);
        reconcile_node(&spans[*index], &ordered, totals)?;
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
    let root_index = roots[0];
    let root = &spans[root_index];
    if root.phase != "complete" || root.start_ns != 0 || root.end_ns != complete_ns {
        return Err(invalid());
    }
    let mut children = BTreeMap::new();
    initialize_children(spans.len(), &mut children);
    link_children(spans, root_index, &nodes, &mut children)?;
    let mut seen = BTreeSet::new();
    trace_reachable(root_index, &children, &mut seen)?;
    if seen.len() != nodes.len() {
        return Err(invalid());
    }
    let mut totals = Totals::default();
    reconcile_nodes(spans, &nodes, &children, &mut totals)?;
    if totals.exclusive != complete_ns {
        return Err(invalid());
    }
    Ok(Reconciled {
        complete_ns,
        classified_ns: totals.classified,
        remainder_ns: required(complete_ns.checked_sub(totals.classified))?,
        exclusive_ns: totals.exclusive_ns,
        per_phase_ns: totals.per_phase_ns,
    })
}
