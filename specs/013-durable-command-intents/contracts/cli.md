# Contract: command line integration

CLI remains store-free as in [012](../../012-unified-invocation-model/contracts/cli.md).
No new CLI store/executor command labels candidates committed. The Rust facade provides
committed enumeration; consumer examples expose its JSON.

## Existing commands and new profile

admit/version/hashes/schema-hash accept0.8 and expose declaration/action/module/schema
identities. eval/invoke/invoke-intent produce candidate commands, never commit/dispatch.
replay/invoke-replay compare record0.7 under retained0.8. verify models guard/payload safety.
Reads cannot emit. Older documents/exit conventions remain preserved.

New-profile output excludes diagnostic provenance. Optional --diagnostics PATH on
applicable eval/invoke/replay commands writes a detached display sidecar, leaving stdout,
semantic identities/replay unchanged. Earlier profile output stays exact.
engine-info includes new formats and accepted_wire_ir. No send/retry/delivery-status command.

## Additive shared governance group

| Command | Required arguments/options | Output |
|---|---|---|
| governance verify | WIRE --profile PROFILE --seed KEY --out ENVELOPE | Fresh authenticated complete module proof envelope. |
| governance verify-migration | SOURCE TARGET MIGRATION --profile PROFILE --seed KEY --out ENVELOPE | Exact source/target proof envelope. |
| governance authorize | CANDIDATE; --wire WIRE for action, or --source SOURCE --target TARGET --migration MIGRATION; --evidence-policy EP --policy POLICY --seed KEY --context Q --now UTC --out EVIDENCE | Recomputed decision, signed authorization and complete evidence. |
| authorize proof options | Repeated --verification ENVELOPE, --waiver WAIVER, --waiver-signature SIGNATURE | Complete validated required documents, never hash-only trusted citations. |

Action/migration flags are mutually exclusive and checked against candidate kind. CLI knows
claimed exact history, not current backend state. Seed identifies declared issuer and is
checked against policy. Key files hold existing32-byte seed hex, never inferred from environment/
working directory or printed. No sign-arbitrary-report command.
Authenticated verify has no --cache; it signs actual fresh typed computation. Existing raw
verify remains development evidence and cannot substitute for authenticated envelopes.
--context reads complete AuthorizationContextV2; --now must equal its policy_time. Q's product
is checked against execution policy; the CLI does not infer additional context/commit time.
The signed artifact archives Q. Offline authorization cannot prove that an actual future
commit supplies that context; the context-bearing store path performs that comparison.
Optional --diagnostics PATH on governance verify/verify-migration writes a detached sidecar,
outside semantic report/envelope identities. All earlier raw report formats remain unchanged.

## Exit and transport

Shared governance exits:

- 0: authorized allow or verified result;
- 1: policy refusal or reproducible authenticated not_verified/inconclusive report;
- 2: malformed document, invalid/untrusted signature/evidence or subject/profile/history mismatch;
- 3: wall-clock/cancellation/process/transport/non-reproducible solver infrastructure abort;
- 64: usage/file access failure, preserving the CLI convention.

Artifacts record genuine outcomes; exit1 never labels a report proved. Atomically write --out
after complete typed serialization. Parse/crypto/solver failure leaves no partial signed output.
Older authorize/verify output/exit behavior stays preserved.
Exit3 produces no semantic report or signed envelope and leaves existing --out content
unchanged, even when a prefix of obligations completed. Deterministic resource exhaustion
uses exit1 with authenticated INCONCLUSIVE under the supported contract; it is never PROVEN.
No waiver promotes an infrastructure abort. Unknown nondeterministic reasons fail closed.

New inputs reject duplicate/unknown keys and malformed hash/key/numeric representations.
Unparseable input yields no evaluation record. A typed refusal retains its actual failure stage,
never falsely claiming evaluation/authorization occurred.

[Quickstart](../quickstart.md) validates these commands after implementation with a facade-only
consumer for candidate export/commit/stream/process recovery. No production backend/connector
credentials/external-effect adapter is needed.
