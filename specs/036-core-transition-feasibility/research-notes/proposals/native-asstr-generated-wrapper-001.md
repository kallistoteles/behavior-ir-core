# Actual484: generated accessor and its exact remaining dependency

Source-only follow-up after the closed successful actual484; no admission.

The retained generated Funs.lean defines transition_study036.serde_json.value.Value.impl.as_str directly from the source enum match. Null, Bool, Number, Array and Object return ok none. The String branch calls alloc.string.String.Insts.CoreOpsDerefDerefStr.deref, then returns some of that borrowed Str. It does not call String.impl.as_str directly. Retained generated FunsExternal_Template.lean declares this deref externally with String → Result Str.

The acquired stable std owner at ground-lean-probe/a0443/sources/library/alloc/src/string.rs:2845 implements String's Deref by self.as_str(); as_str at1057 constructs an unchecked UTF-8 str from the existing vector's shared slice. These are nonallocating wrappers, with validity of the existing String/bytes and borrow/frame semantics still requiring their declared interpretation. The stable source pin and extraction compiler are separate subjects: matching text alone does not establish compiler/representation adequacy.

The next prospective source probe requests exactly alloc::string::_::deref in addition to the successful JSON accessor. A unique translated-body/hash guard is mandatory; the method selector itself is not evidence that the body was included. A rejected-selector red precedes nine green source-support tests. This probe retains all other opaque nodes and is not a complete JSON/library or Core refinement.

A subsequent wrapper proof must use the unchanged generated accessor body and its actual call, with independently checked expected relational type. It must establish byte/UTF-8/target-usize and receiver/frame validity and the concrete dependency interpretation. The old candidate as_str equation, source hashes and six successful constructor simplifications alone cannot discharge that bridge. Allocating clone/to_owned/insert and B01–B10 remain open.
