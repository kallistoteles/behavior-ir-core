# FR-011: actual-source and actual-relation correspondence

Research date: 2026-11-01. Planning evidence only: no new checker, translator,
proof, circuit, dependency installation or benchmark was built for this note.

## Decision

Use Lean 4.30.0 to define a small typed, first-order **microstep IR** for K. From
that IR produce both a restricted Rust microstep implementation and its constraint
relation. Require kernel-checked semantic translation theorems and independent
validation of the **actual Rust source bytes and actual canonical R1CS matrices**.
The generators may be untrusted; successful validation is mandatory.

This is a deliberately small translation-validation project, not a verified
compiler for general Core or all Rust. Large semantic transitions, initialization,
hashing and authenticated path walks use repeated machine microsteps. Ordinary
Rust host/producer/storage code does not become part of K merely because it
passes a test. The final public acceptance path additionally checks the complete
compressed certificate and its expected subject.

Use the existing Rust 1.98.1 and Lean 4.30.0 pins. Do not make Aeneas/Charon a
mandatory dependency of the first bridge: their source-to-model translation is
not an independently checked source/native correspondence theorem. They remain
useful secondary checks and a researched alternative.

**Early stop:** before implementing the whole G1 machine, demonstrate one actual
nontrivial exported native microstep, its actual exported matrix artifact, and
kernel-checked correspondence for both. If the restricted source validator,
source semantic theorem or matrix validator cannot be completed within the frozen
trial ceiling, record FR-011 as **not established**. Do not substitute a trusted
translator or differential tests and mark it passed.

## Why the 032 result is insufficient

The existing [circuit correspondence ledger](../../032-transition-verification-study/evidence/circuit-correspondence.md)
explicitly leaves Rust constraint construction and translation trusted. Its
[Lean circuit contract](../../../experiments/transition-study032/proofs/CircuitContract.lean)
proves a result about `boundedStep`, which delegates to the mathematical checker;
it does not quantify over the matrices emitted by the Rust implementation.
The [wider ledger](../../032-transition-verification-study/evidence/correspondence.md)
also identifies the full Core replay bridge and unverified rendering. Reusing
those theorem names or proving another abstract circuit predicate cannot close
the actual-artifact gap.

## Precise construction route

### 1. Independent semantics and a small IR

Formalize the admitted G1 subset's F, Init, J, errors, command sequence and
observation recipe independently of the implementation IR. Prove initialization
and K preservation for this subset, not only validity of a desired final count.
Closed-template recognition and all observation-relevant declarations are included
in the subject; a producer-supplied module hash is not semantic admission.

The microstep IR uses explicit fixed-width unsigned words, Booleans, constant
array positions, ranges and selected values. Signed Int64 has one declared
two's-complement interpretation; overflow/refusal and counter bounds are explicit.
Digest values use all 256 bits, with range-constrained limbs where necessary.
There are no implicit host strings, decimal conversions, map iteration orders or
Rust `usize` assumptions in this IR.

The actual K program is authenticated data or a frozen IR program. The formal
machine interpretation includes control phase, outstanding obligations and memory
roots. Only the proved `Done`/finalization rule may produce an event or attempt
claim. The G1 proof must connect these microsteps to the independent F/J/K meaning.

### 2. Check the native source, not just a generated model

Emit a narrow, canonical Rust fragment with value-only arguments and fixed-size
state. Permit explicit bitwise operators, comparisons, constants, conditional
selection and precisely specified word arithmetic. Exclude macros, `cfg`, `unsafe`,
FFI, traits, pointers, heap operations, panic paths and implicit arithmetic from
the semantic microstep implementation. Host framing is a separate boundary.

Define this fragment's syntax and semantics in Lean. Prove once that translation
of a well-typed IR program into that Rust AST preserves its meaning. A formal
parser/validator reads the **actual file bytes** used by the build and checks that
they decode to the certified AST with no extra definitions/attributes. Kernel
proofs establish that equality and apply the generic semantic theorem.

A source hash identifies the checked file afterwards; the hash is not itself a
translation proof. Bind the artifact to the complete build recipe, rustc version,
target, flags and emitted executable hash. This gives a checked source semantics
bridge under the explicitly named ordinary Rust compiler/runtime/ISA assumptions;
it does **not** claim that rustc/LLVM is itself verified. No hand-edited generated
source can retain a passing correspondence receipt.

This route requires a genuine small fragment semantics and parser/translation
proof. Merely printing Rust that looks like Lean, or checking that two generators
produce equal hashes, is insufficient. Its feasibility is the first experiment.

### 3. Check the actual proof relation

Prove each IR primitive's field-constraint realization sound and complete under
its stated input bounds, and compose these proofs for the emitted relation. Bind
the precise field modulus, constant-one convention, public/private wire layout,
input/output arity, canonical coefficient representation and constraint ordering.

The independent validator checks the exact matrices supplied to the proof backend
against this certified compilation. It must cover every Boolean/range constraint,
digest bit, selector, state/root update and finalization check. Matching a circuit
label or allocation count does not establish this correspondence.

For the actual proof-library integration, retain both the certified matrix artifact
and an extract of the effective semantic-step shape, after allocation and before
parameter caching. Validate their exact correspondence and derive the consumer's
expected recipe from that same checked artifact. Proof-system augmentation remains
part of the selected cryptographic implementation/security contract; a producer
cannot replace the semantic step behind an unchanged expected key identifier.

SHA-256 must be defined at the specified byte/bit level and its actual Boolean
constraints related to that definition. Treat collision resistance as a security
assumption, not as a substitute for implementing the hash. A free uninterpreted
hash oracle in the mathematical relation cannot justify a concrete SHA gadget.

### 4. Artifact checks and mutation controls

The correspondence receipt must identify the formal theorem targets/axioms,
actual source bytes, parsed AST/IR, matrix bytes and field, wire mapping, compiler
recipe, executable, verifier recipe and exact public-claim encoding.

Required mutations exercise real validators:

- Change a native comparison, constant, signed interpretation or selected result.
- Add an attribute/unchecked source path outside the declared Rust fragment.
- Delete a matrix range/Boolean constraint or change an input/output wire.
- Drop a digest limb, reduce it modulo the field, or change byte order.
- Replace the init predicate with accurate views over an invalid genesis.
- Finish a proof at an internal microstep or change a command occurrence/order.

Each must fail the appropriate correspondence or acceptance check. These tests
support the universal translation theorems; they do not replace them.

## Trust and proof hygiene

The intended remaining TCB is explicit: authoritative formal semantics, Lean's
logic/kernel and proof checking environment, the ordinary pinned Rust compiler/
runtime/ISA and build binding, the selected cryptographic implementation and its
security assumptions, and the declared deployment/storage authority model.
The Core-specific source-to-IR and IR-to-matrix translation claims must be proved
or validated, not moved into that list simply because they are inconvenient.

For critical semantic/translation claims, retain complete transitive axiom lists
and fresh proof replay. Exclude `sorry`, undeclared custom axioms and native
evaluation axioms from the required kernel-only correspondence receipts. Use
ordinary proof terms, induction, rewriting and kernel-checked reflection. Do not
infer a proof from a successful `#eval` or compile-and-run equality comparison.
The [Lean proof-validation guide](https://lean-lang.org/doc/reference/latest/ValidatingProofs/)
distinguishes kernel reduction from native-evaluation assumptions; the exact
behavior must be checked against the pinned 4.30.0 tool, not inferred from latest
documentation. The existing local Nix store contains Lean 4.30.0, but no execution
of new proof targets was performed here.

The G1 claim can remain conditional on ordinary compiler/hardware assumptions
without demanding a verified rustc. It cannot remain conditional on “the native
K means the model” or “the actual R1CS means the intended circuit”: those are the
specific FR-011 obligations this experiment exists to test.

## Alternatives considered

### Aeneas/Charon with proofs about extracted Rust

Aeneas translates Charon LLBC into pure theorem-prover definitions. It provides
an actual source-linked verification workflow and is substantially better than
unrelated hand-written Lean models. However, the original paper explicitly keeps
the implementation trusted, and the 2026 cryptographic case study also discusses
opaque dependencies/intrinsics with trusted models. It does not supply this
project's checked native-to-K or emitted-R1CS bridge. That is why it is a secondary
check here rather than an assumption that closes FR-011.
[Aeneas paper §5](https://arxiv.org/abs/2206.07185v2),
[2026 case study §§5–6](https://arxiv.org/abs/2609.15648v1).

If used diagnostically, pin Aeneas with the Charon revision required by its
`charon-pin`, not independently selected repository heads. Its Lean backend also
requires its compatible Lean version; introducing that dependency may conflict
with the current 4.30.0 pin. Resolve such a conflict in a separate identified
toolchain campaign, never by silently regenerating old proof evidence.
[Pinned Aeneas instructions](https://github.com/AeneasVerif/aeneas/blob/ab34bd28458a08c150b7cbf1873e59af74588138/README.md).

### HOL4/CakeML verified binary extraction

CakeML's proof-checker pipeline connects formal definitions, parsers and compiled
machine code, while retaining explicit HOL/model/ISA/FFI assumptions. CakeLPR is
a real example of this approach. It is a valid alternative if native binary
extraction becomes the chosen assurance level, but does not prove a Core-specific
circuit and would require a new HOL4 formalization plus a recorded language/stack
exception. It is not free verified extraction of the existing Lean model.
[CakeML checker boundary](https://cakeml.org/checkers.html),
[CakeLPR paper](https://cakeml.org/tacas21.pdf).

### Separate hand-written Rust K and Lean model

Reject as the primary FR-011 route. Differential tests are useful but leave the
same translation gap as 032. A generic zkVM proving the Rust binary similarly
does not relate that binary to the exact Core/K specification by itself.

## Versions inspected

Repository heads were read from the primary GitHub commits API on 2026-11-01;
they identify the alternatives inspected, not installed dependencies:

| Artifact | Inspected revision |
| --- | --- |
| Core source | `1a3ae37623cf90b4608a678ef283ee313306d9bb` |
| Existing Lean pin | `leanprover/lean4:v4.30.0` |
| Aeneas | `ab34bd28458a08c150b7cbf1873e59af74588138` |
| Charon independent head | `02fa3f0dd219b20977e60b1421d1bb540eef54ea` (not a claimed compatible Aeneas pin) |
| CakeML | `665f9b21712ad093e10a404ccc2f78e64a34aeef` |

The selected typed-IR/source/matrix validators are new proposed Core033 work.
No examined external project supplies their complete theorem for Core. Planning
resolves the implementation choice; passing the correspondence gate remains a
future result that the trial is permitted to fail.
