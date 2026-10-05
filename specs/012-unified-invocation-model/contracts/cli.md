# Contract: command line additions

| Command | Arguments | Output | Exit |
|---|---|---|---|
| `behavior invoke` | `<wire> <invocation.json> <snapshot.json>` | the invocation record (canonical JSON) | 0 if evaluated (any inner result); 3 for a pre-evaluation refusal (`DECODE` or `BINDING`); 2 if a file is not JSON or the wire is invalid |
| `behavior invoke-intent` | `<wire> <intent.json> <snapshot.json> --context <context.json>` | the invocation record | same as `invoke` |
| `behavior invoke-replay` | `<wire> <record.json>` | the replay report | 0 if it matches; 2 on mismatch |

- The existing commands (`eval`, `intent`, `read`, `read-intent`, `replay`, `read-replay`)
  are unchanged and documented as superseded for capability use.
- The CLI has no store. `invoke` resolves typed identities against the snapshot document (research R5).
- `engine-info` is unchanged.
