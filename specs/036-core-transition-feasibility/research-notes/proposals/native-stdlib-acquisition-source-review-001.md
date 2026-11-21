# Review the native stdlib acquisition draft

Status: **new, unselected research note**, based only on the unselected
`native_std_source_001.py` and official GitHub documentation read on 2026-11-21.
No acquisition, test, build, installed-compiler execution, E/private artifact,
raw-IR/live-output read or process inspection was performed. Neither protected
binary was accessed. No a0442 outcome or native adequacy is inferred.

The draft has a coherent acquisition-only trust boundary: GitHub API/TLS supplies
the requested commit/path association, local Git-blob hashing checks the returned
content, and the pinned compiler reports its matching commit. Three small
corrections would make that boundary more reproducible and preserve its stored
artifacts through finalization. Exact URL spelling is a compatibility concern,
not a semantic counterexample or evidence of wrong acquired bytes.

## What the official API supports

The Contents endpoint accepts a commit, branch or tag in `ref`; public resources
need no authentication. Its file example has `type`, `encoding`, `size`, `name`,
`path`, `content`, `sha`, `url`, `git_url`, `html_url`, `download_url` and `_links`;
the example encodes content as base64. `application/vnd.github+json` is the
recommended Accept value. For files up to 1 MB all features work; from 1–100 MB,
only raw/object media work and object returns empty content with encoding
`none`. Files over 100 MB are unsupported. Download URLs expire. Symlinks to
ordinary repository files may return target content; submodule responses have
special SHA/URL semantics. [GitHub Contents reference](https://docs.github.com/en/rest/repos/contents#get-repository-content)

The draft uses an allowed fixed path list, a full commit in the request, the
recommended Accept value and an application User-Agent
(`native_std_source_001.py:14–44,149–157`). Its file/identity/base64/byte-size/UTF-8/
Git-blob checks reject inconsistent payloads (`:47–81`); source and response
counts/bytes are bounded (`:32–35,161–169`).

## Definite source-level corrections

1. **Align the declared file bound with the selected base64 media mode.** The
   draft permits `MAX_FILE = 2 * 1024**2` but insists on base64 JSON content
   (`:32,55,61–62,72`). That range exceeds the ordinary mode's documented support
   above. This is a definite contract/bound mismatch; it does not establish that
   any of these fifteen fixed paths exceeds the working range or that a real run
   will fail. **Minimal correction:** cap the acquisition at a conservative decimal
   `1_000_000` source bytes per file, keep the current bounded JSON mode, and fail
   explicitly if any selected response exceeds it. There is no need for raw-URL
   fallback, larger downloads or an expanded file inventory.

2. **Pin the REST API version and record it.** Request headers currently contain
   only Accept and User-Agent (`:151–157`). GitHub says to select a version with
   `X-GitHub-Api-Version`; the current example uses `2026-03-10`. Its supported
   table also includes `2022-11-28` until March 10, 2028. Unversioned requests
   currently default to the latter, but that default can change when old versions
   retire. **Minimal correction:** explicitly select and record the supported
   version, preferably `2026-03-10` to match the current examples. This is a
   reproducibility omission, not evidence that today's unversioned request
   returns another commit. [GitHub API Versions](https://docs.github.com/en/rest/about-the-rest-api/api-versions#specifying-an-api-version)

3. **Bind stored sources/responses to the already validated in-memory bytes and
   recheck them before success.** The Git SHA1 check validates `raw` (`:78–80`).
   The draft then writes the source and computes its recorded SHA256 by reading
   `source_path` (`:170–183`); a changed on-disk source could therefore acquire a
   recorded SHA256 unrelated to the raw blob already checked. Conversely a
   persistent later change can invalidate an earlier recorded digest. The final
   checks cover the selection/toolchain/compiler, but not retained sources or
   responses (`:186–205`). These are definite missing byte-binding/after-use
   guards; no actual mutation is alleged. **Minimal correction:** freeze SHA256
   directly from each validated `raw` and original `metadata`, verify the written
   files against those values, and recheck the complete retained file inventory,
   sizes and hashes before writing the final result. Continue recording the
   checked Git blob SHA1 and the exact response metadata as distinct evidence.

## Compatibility and provenance limits

The code predicts exact string forms for self, HTML, raw-download and Git URLs
(`:48,56–66`) and rejects any final response URL different from the original
request (`:158–160`). GitHub documents redirects, including temporary 302/307 and
permanent 301, and advises consuming returned URL fields rather than predicting
their future structures. Thus these exactness rules can reject valid API
behavior. No documentation checked here promises that the `url` field always
echoes precisely the request's query string. Keep this classified as a possible
fail-closed compatibility issue; an actual response would be needed to identify
which check, if any, rejects the selected request.
[GitHub redirect and URL guidance](https://docs.github.com/en/rest/using-the-rest-api/best-practices-for-using-the-rest-api#follow-redirects)

Keeping exact URL requirements as a deliberate narrow policy is reasonable for
this one bounded acquisition. Document that policy and fail with the specific
field/status/redirect mismatch instead of introducing an automatic fallback.
The current final-URL test expresses final identity, not a separately recorded
redirect chain. Retaining the response Content-Type, selected API version,
status and final URL would make the chosen transport/media policy reviewable;
none is currently included in each `sources` row (`:174–184`). Content-Type
validation would supplement the existing parsed-payload checks, not replace
base64/hash/size verification. GitHub defines Accept media types as selecting the
response format. [GitHub media types](https://docs.github.com/en/rest/using-the-rest-api/getting-started-with-the-rest-api#media-types)

The `type == file` condition alone does not prove a regular Git-tree entry at
the requested path because of the symlink behavior above. This is a limitation
if later consumers need tree-entry-kind evidence, not a demonstrated defect for
these fixed source-content acquisitions. Similarly, recomputing the returned
blob SHA1 proves content self-consistency; it does not independently reconstruct
the Rust commit tree. The draft correctly declares reliance on official API/TLS
metadata for that association (`:205`). A signed archive or a full Git-tree proof
would change the acquisition scope and is not required by its present claim.

Compiler identity is deliberately narrow: the draft fixes executable path/hash,
requires the expected version/host/commit report, then rechecks its binary and
input references (`:84–101,116–147,186–189`). No definite local identity-check
defect was found from the draft. Such a match identifies the reported compiler
commit; it does not establish that every installed stdlib binary, build cfg,
runtime or ABI has been reconstructed from this partial file inventory. The
result's explicit unestablished admission/proof flags and acquisition-only scope
already preserve that distinction (`:192–205`).
