# Foundation checkpoint

Baseline reports and four actual runtime/decision-replay controls are in baseline.json.
Authentic signed 0.10 action/migration histories were captured and hashed before the
current identity changed. history-identity-red.txt / envelope-version-red.txt retain
nonempty version failures; corresponding green logs preserve old archive bytes and
actual data/behavior replay plus idempotent original-event recovery under current 0.11.

The six mandatory support failures are in support-matrix-red.txt. The independent
constraint control passes; Id/no-holder controls contain zero checks. The public
consumer support red log additionally has a passing actual Store/replay control.
consumer-red.txt is only an initial test compile failure, not semantic red evidence.

correctness.md and construct-mapping.md state L1-L8, the actual runtime schedule and
remaining Rust/solver/backend assumptions. Inventory tests originally fail behaviorally
(inventory-red.txt), then three private tests pass in inventory-green.txt: all incoming
required/optional fields, other unbound source types, typed capture/partition and
unbounded proof cardinality despite finite witness slots. These are correspondence
controls, not a machine-checked proof. Dead-code warnings reflect not-yet-integrated
helpers and must be removed before final Clippy.

The removal refusal is still active at this checkpoint. G1 and removal support remain
incomplete. New private summaries are per immutable admitted module; existing APIs do
not accept caller-asserted validity. No runtime/admission code or historical fixtures
were modified. New proof authority uses a distinct verifier identity.
