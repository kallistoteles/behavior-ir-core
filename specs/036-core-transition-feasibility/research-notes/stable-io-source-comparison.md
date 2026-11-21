# Stable Native329 I/O source compared with analysis source

Research only, 2026-11-19. Uses the research skill and official `rust-lang/rust` primary sources. The two prior notes, [native source binding](native-std-source-binding.md) and [model boundary](io-default-model-boundary.md), were read first. Only this new note was written. Small individual raw source files were fetched into memory; no source tree, archive, retained source acquisition, builds, tests, installations, large IR parsing, selected-input/evidence changes, process-argument/environment inspection, or protected-artifact access occurred. Current349/root33934 was supplied as live; its result is not inferred.

## Identity and scope

**The exact stable upstream source is available, and the Read helper really differs.** The [stable commit][stable-commit] identifies the 1.98.1 backport; its pinned [src/version][stable-version] contains `1.98.1`. The analysis commit's [src/version][analysis-version] contains `1.100.0`; its nightly designation and compiler identity remain the retained local probe facts documented in the prior binding note. Neither branch heads nor latest documentation were substituted.

For additional source correspondence, the five individual upstream analysis files `core/src/io/write.rs`, `alloc/src/io/read.rs`, `alloc/src/io/util.rs`, `alloc/src/io/buffered/bufwriter.rs`, and `std/src/fs.rs`, fetched at `923c95cdf5ba65cea505aa2ea829f578e1506ed8`, were byte-equal in memory to those currently installed under `/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library`. This is a current text observation, without new retained acquisition/hash receipts. The earlier note supplies existing local provenance and hashes.

**These online reads do not acquire or bind accepted native proof inputs.** They identify upstream text at Native329's recorded compiler commit, not the exact source/configuration used to produce its installed precompiled libraries or the bodies linked into its executable. A successor study must prospectively declare and retain/hash accepted source acquisition and its component, cfg, compiler, dependency and runtime correspondence. Native remains pinned stable 1.98.1 under plan17/48.

## Confirmed body and dispatch comparisons

Here, exact function-text comparisons start at `fn` and include the complete signature/body; they exclude surrounding attributes, visibility prefixes, module paths and imports. Movement between std/core/alloc and changed internal visibility are not claims of unchanged public/source identity.

| Item | Verified text comparison and adapter consequence |
| --- | --- |
| `Write::write_all` | Stable [std body][stable-write] and analysis [core body][analysis-write] are exact function-text matches. Empty input succeeds without calling `write`; otherwise call the receiver's actual `write`, return `WRITE_ALL_EOF` on zero, advance by checked `buf[n..]`, retry Interrupted on the same remainder, and return other errors with prior effects preserved. Neither body calls `flush`. Equality here supports reusing an algorithm adapter only after dependencies, dispatch and source correspondence are bound. |
| Read default/API | Both [stable default][stable-read-default] and [analysis default][analysis-read-default] call `default_read_to_end(self, buf, None)`. However, stable [`Read::read`][stable-read-required] is a required declaration; analysis [`read`][analysis-read-primitive] has a default constructing a BorrowedBuf and dispatching to `read_buf`, and a `rustc_must_implement_one_of(read_buf, read)` annotation. Both `read_buf` defaults forward to `default_read_buf`, whose [stable][stable-read-buf] and [analysis][analysis-read-buf] function text matches: initialize the cursor, invoke `read`, propagate error before checked advancement, then succeed. This API change must not create an assumed termination law for arbitrary dictionaries. Actual File/Take override both primitives. |
| `Take<T>` | Its [stable impl][stable-take] and [analysis impl][analysis-take] differ only in safety-comment placement. `read` avoids the inner call at zero limit, caps the slice, propagates errors before decrement, asserts the returned count is within the limit, then subtracts. `read_buf` avoids the inner call at zero, otherwise uses a restricted temporary cursor or reborrow; it propagates initialization, may zero-initialize the tail, advances by filled bytes and subtracts those bytes **before returning even an error**. Preserve cursor/world changes and both primitive overrides. Neither impl overrides `read_to_end`: `Take<File>::read_to_end` uses the trait helper, not File's `read_to_end` override. |
| BufWriter | [Stable `write_all`][stable-buf-write] and [cold path][stable-buf-cold] exactly match the corresponding [analysis functions][analysis-buf-write]; `flush_buf` function text also matches. The fast branch is `input.len() < spare_capacity`, not `<=`. Cold code flushes only when input exceeds spare capacity; then forwards directly to the inner **`write_all`** when input is at least total capacity, otherwise buffers it. Equality with spare capacity reaches cold code without necessarily flushing. Preserve `panicked` updates around inner calls and original override dispatch. |
| File | `buffer_capacity_required`, the complete `Read for &File`, and complete `Write for &File` impl text match between [stable][stable-file] and [analysis][analysis-file]. Owned File's relevant `read`, `read_buf`, `read_to_end`, `write` and `flush` forwarding bodies also match. Its two vectored-capability methods spell the receiver differently: stable `(&&*self)` versus analysis `(&self)`; this note claims no resulting semantic difference. File has a size-hint/reservation `read_to_end` override, but no `write_all` override. Metadata/position queries and `try_reserve` precede its direct helper call; Take's helper path bypasses this override. Platform inner operations remain separate runtime obligations. |

The [stable error constant/classifier][stable-error] and [analysis error constant/classifier][analysis-error] have matching inspected definitions: `WRITE_ALL_EOF` is WriteZero with message “failed to write whole buffer”; Interrupted classification distinguishes OS/custom/simple/message representations, delegating the OS case. This comparison does not prove the OS classifier or error-representation bridge. BufWriter's `flush_buf` instead constructs WriteZero with “failed to write the buffered data”; its guard removes successfully consumed prefixes even on later error/unwind, preserving the remainder. A generic `write_all` loop cannot replace that buffering/guard behavior. Sources: [stable flush][stable-buf-flush], [analysis flush][analysis-buf-flush].

## Actual Read helper differences

The following compares complete [stable helper text][stable-helper] with the byte-matched [analysis helper][analysis-helper], rather than inferring changes from version numbers.

| Mechanism | Stable 1.98.1 | Analysis 1.100.0-nightly |
| --- | --- | --- |
| Probe allocation | A zeroed 32-byte stack probe calls actual `read`, retries Interrupted, and uses infallible `extend_from_slice` after success. No helper cfg branch pre-reserves it. | Under `no_global_oom_handling`, each probe attempt first `try_reserve(32)?`, then uses `try_extend_from_slice_of_bytes(...)?` on success. Otherwise it uses the stable-style append after reading. Thus cfg affects allocation/error order, including before an Interrupted retry. |
| Probe in main loop | Probe only if Vec is full **and** capacity equals entry capacity. After nonzero probe it falls through to the spare-capacity path in that iteration. | Probe if spare capacity is **less than 32** and capacity equals entry capacity. After nonzero probe it resets initialization tracking and `continue`s, allowing further probes. |
| Main reservation | `try_reserve(32)?` only when full. | Reserve whenever spare capacity is less than 32; reset initialization tracking afterward. A compile-time UTF-8-size assertion is also present. |
| Cursor size/initialization | `min(spare.len(), max_read_size)`; no initialized-spare tracking between iterations. | Tracks `init_until`. If more than 32 initialized unfilled bytes remain, use their entire length; otherwise use `min(max_read_size, capacity-len)`. Reapply `set_init` when that range was initialized, and update tracking when the new BorrowedBuf is initialized. |
| Growth heuristic | With no size hint, an uninitialized result uncaps reads; otherwise double on `buf_len >= max_read_size && bytes_read == buf_len`. | Same uninitialized-result rule, but initialized-result doubling tests `bytes_read == max_read_size`. |

Shared details remain mandatory: initial size-hint rounding uses checked addition of 1024 and rounding to `DEFAULT_BUF_SIZE`; the initial small-spare/no-or-zero-hint condition probes; both primitive loops retry Interrupted. The main `read_buf` retry uses reborrows of the same cursor. Both helpers append its filled count to Vec length **before** propagating a non-Interrupted error, preserving data plus error. A successful zero-byte read ends the operation; success returns appended length. Neither algorithm establishes fairness or termination after indefinitely repeated interruptions.

One discriminating source trace, conditional on the analysis global-OOM branch: begin with capacity 64, length 48 and no size hint; let the initial 32-byte probe return one byte. Capacity stays 64. Stable next invokes `read_buf` with 15 spare bytes; analysis instead probes with `read` and a zeroed 32-byte array. This is a deduction from the bodies, not an observed runtime result or claim about actual File output. It demonstrates why a single generic adapter cannot silently identify the helpers: callback choice, request size/content, allocation and effects can differ. A separate stable adapter or checked actual-instance equivalence is needed, with complete cursor/Vec/error semantics. No new stream law, domain restriction or environmental assumption is supplied.

## A limited source-level cfg witness

Both exact sources contain one inherent `Vec::with_capacity` definition in `alloc/src/vec/mod.rs`, guarded by `#[cfg(not(no_global_oom_handling))]`: [stable lines 515–523][stable-vec], [analysis lines 518–526][analysis-vec]. This is a useful **prospective public-API witness**, not a recovered distributed std build configuration.

A separately bound successful direct use of this exact API against the identified precompiled alloc artifact, plus its source/build correspondence and exclusion of alternate patched definitions, could support the narrow inference that this alloc API was compiled with that cfg absent. It would still require consistent std/alloc component/build binding before selecting a cfg-dependent std/helper body. A user-crate `--print cfg` establishes neither fact. No witness compilation was run, no corresponding receipt was established here, and no distributed `stdcfg` conclusion is asserted.

The finding narrows the earlier missing-source uncertainty to a concrete upstream text comparison. It closes no native source/runtime bridge, adapter theorem, B01–B10, T052 or T059 obligation; accepted source acquisition and complete expected proof closure remain future work.

[stable-commit]: https://github.com/rust-lang/rust/commit/48a229ceaefd4985c50990b14116b6d856af0985
[stable-version]: https://raw.githubusercontent.com/rust-lang/rust/48a229ceaefd4985c50990b14116b6d856af0985/src/version
[analysis-version]: https://raw.githubusercontent.com/rust-lang/rust/923c95cdf5ba65cea505aa2ea829f578e1506ed8/src/version
[stable-write]: https://github.com/rust-lang/rust/blob/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/io/mod.rs#L1611-L1623
[analysis-write]: https://github.com/rust-lang/rust/blob/923c95cdf5ba65cea505aa2ea829f578e1506ed8/library/core/src/io/write.rs#L214-L226
[stable-read-default]: https://github.com/rust-lang/rust/blob/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/io/mod.rs#L922-L924
[analysis-read-default]: https://github.com/rust-lang/rust/blob/923c95cdf5ba65cea505aa2ea829f578e1506ed8/library/alloc/src/io/read.rs#L290-L292
[stable-read-required]: https://github.com/rust-lang/rust/blob/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/io/mod.rs#L800
[analysis-read-primitive]: https://github.com/rust-lang/rust/blob/923c95cdf5ba65cea505aa2ea829f578e1506ed8/library/alloc/src/io/read.rs#L86-L170
[stable-read-buf]: https://github.com/rust-lang/rust/blob/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/io/mod.rs#L573-L580
[analysis-read-buf]: https://github.com/rust-lang/rust/blob/923c95cdf5ba65cea505aa2ea829f578e1506ed8/library/alloc/src/io/read.rs#L1053-L1060
[stable-take]: https://github.com/rust-lang/rust/blob/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/io/mod.rs#L2571-L2647
[analysis-take]: https://github.com/rust-lang/rust/blob/923c95cdf5ba65cea505aa2ea829f578e1506ed8/library/alloc/src/io/util.rs#L235-L311
[stable-buf-write]: https://github.com/rust-lang/rust/blob/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/io/buffered/bufwriter.rs#L548-L561
[stable-buf-cold]: https://github.com/rust-lang/rust/blob/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/io/buffered/bufwriter.rs#L414-L447
[analysis-buf-write]: https://github.com/rust-lang/rust/blob/923c95cdf5ba65cea505aa2ea829f578e1506ed8/library/alloc/src/io/buffered/bufwriter.rs#L430-L585
[stable-buf-flush]: https://github.com/rust-lang/rust/blob/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/io/buffered/bufwriter.rs#L195-L267
[analysis-buf-flush]: https://github.com/rust-lang/rust/blob/923c95cdf5ba65cea505aa2ea829f578e1506ed8/library/alloc/src/io/buffered/bufwriter.rs#L208-L280
[stable-file]: https://github.com/rust-lang/rust/blob/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/fs.rs#L1312-L1530
[analysis-file]: https://github.com/rust-lang/rust/blob/923c95cdf5ba65cea505aa2ea829f578e1506ed8/library/std/src/fs.rs#L1316-L1534
[stable-error]: https://github.com/rust-lang/rust/blob/48a229ceaefd4985c50990b14116b6d856af0985/library/core/src/io/error.rs#L124-L490
[analysis-error]: https://github.com/rust-lang/rust/blob/923c95cdf5ba65cea505aa2ea829f578e1506ed8/library/core/src/io/error.rs#L125-L490
[stable-helper]: https://github.com/rust-lang/rust/blob/48a229ceaefd4985c50990b14116b6d856af0985/library/std/src/io/mod.rs#L414-L524
[analysis-helper]: https://github.com/rust-lang/rust/blob/923c95cdf5ba65cea505aa2ea829f578e1506ed8/library/alloc/src/io/read.rs#L846-L1008
[stable-vec]: https://github.com/rust-lang/rust/blob/48a229ceaefd4985c50990b14116b6d856af0985/library/alloc/src/vec/mod.rs#L515-L523
[analysis-vec]: https://github.com/rust-lang/rust/blob/923c95cdf5ba65cea505aa2ea829f578e1506ed8/library/alloc/src/vec/mod.rs#L518-L526
