# Small same-head overhead remediation

The controlled b873d80 campaign failed a mandatory frozen median-regression criterion.
All three N1/same-head timing repetitions were complete when it was stopped. Its703
completed rows and exact failure are retained in `attempts/campaign-b873d80-controlled`.
No final acceptance is claimed; the original frozen profile is unchanged.

| Global | Candidate cycles ms | Median ms | Frozen limit ms |
|---|---|---:|---:|
| none | 8.041084, 7.987255, 8.019358 | 8.019358 | 7.5783452 |
| true | 8.512003, 8.515815, 8.376055 | 8.512003 | 7.7612444 |
| count | 9.096655, 9.321301, 9.308318 | 9.308318 | 8.6014827 |

The new `checked_evaluation_encodes_the_exact_module_identity_once` regression
actually failed with two encodings instead of one (`warm-module-red.txt`). Previously
prepared evaluation serialized the full module to check context and serialized it
again to bind the checked result. Each encoding includes all metadata, not merely
BehaviorHash. This was unnecessary work introduced by the optimization.

A private call-scoped token now establishes the full-content comparison once and
retains immutable references to that exact Module and prepared parent. The evaluator
requires the same Module address before using the token. The actual compared encoding
is moved into the resulting checked execution. Thus no content check is skipped and
no pointer is substituted for a cross-call/history identity. The token cannot be
serialized, supplied externally or retained beyond its immutable borrow. A differently
allocated Module with identical complete content can independently establish its own
token. Existing changed-metadata/same-BehaviorHash controls still refuse reuse.

The Core13-test suite passes. The exploratory release pilot, deliberately labelled
ungated/non-acceptance evidence in `warm-module-pilot.jsonl`, compares three runs of
the released baseline, b873d80 and the one-encoding candidate. Its candidate medians
are6.145483/6.488635/7.203600ms for none/true/count, below the fixed limits, with exact
semantic digest equality. The pilot establishes a measured consequence of removing
this duplication; it does not replace the complete frozen campaign or renewed G3.
No other runtime algorithm, delayed validation, public API, Backend/record contract or
resource threshold was introduced to pass the small controls.

The new source must pass the complete required G3 and all six premise mutations before
final evaluation. Every new candidate/reference group will be rerun; only complete
immutable released-baseline groups may be reused. Failed prior attempts remain visible.
