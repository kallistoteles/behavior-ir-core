# Native standard-library source is available upstream

Research only, 2026-11-21. New unselected note; web discovery did not download,
install, build, or declare a locally retained source subject. The previous bounded
local absence finding remains accurate.

The official Rust1.98.1 release identifies commit
`48a229ceaefd4985c50990b14116b6d856af0985`. This establishes an upstream
version/commit reference, not that the installed native compiler has this exact
source identity. [Release](https://github.com/rust-lang/rust/releases/tag/1.98.1),
[commit](https://github.com/rust-lang/rust/commit/48a229ceaefd4985c50990b14116b6d856af0985).

The versioned owning str source is accessible. Its comparison and equality bodies
use byte slices; partial comparison returns the comparison result wrapped in Some.
This supports the proposed byte interpretation independently of the1.100 source.
It does not prove intrinsic/compiler/runtime adequacy.
[Rust1.98.1 str traits](https://raw.githubusercontent.com/rust-lang/rust/1.98.1/library/core/src/str/traits.rs).

The1.98.1 entry owner also retains the key, cached vacant-edge handle and dormant
map. Its default method branches on occupancy before evaluating Default. This
supports capturing an insertion gap and conditional default invocation; tree-node,
allocator, destructor and error refinement remain separate.
[Rust1.98.1 entry owner](https://raw.githubusercontent.com/rust-lang/rust/1.98.1/library/alloc/src/collections/btree/map/entry.rs).

The versioned rendered BTreeMap documentation URL was inaccessible through the web
tool; that is a tool-access result, not evidence that its documentation is absent.

Next: prospectively declare a bounded acquisition of the required files by
immutable commit, retain their provenance/content hashes, verify the installed
compiler identity, and compare the relevant native/analysis source contracts.
No native primitive admission or compiler-version equivalence follows from this
discovery alone.
