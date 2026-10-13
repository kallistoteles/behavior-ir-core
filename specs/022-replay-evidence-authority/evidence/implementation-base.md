# Implementation Base: Core 022

Started 2026-10-12 on `022-replay-evidence-authority` in the isolated
`/home/kalle/repos/behavior-ir-core-022` worktree.
Remote: `git@github.com:kallistoteles/behavior-ir-core.git`.

- Starting revision: `f0d2a5102adcb0b491cac166f023fd87bb03e7a7`.
- Runtime dependency: frozen 018 `391017e536ff64ddf94999ec126bc71799952264`,
  verified ancestor, including 017. No dependency adjustment or merge performed.
- Initial tracked-tree SHA-256: `195d2bad874ad26ae10e50181db834eb661d17f04502627c9bcde5e4999629fc`.
  Computed over sorted tracked filenames and bytes, each terminated by NUL.
- Initial tracked/untracked status: clean.
- Requirements checklist: 16 checked, zero unchecked; markers remain review-owned.
- No owning AGENTS.md or extension-hooks file present. Shared project instructions,
  Core constitution and feature contracts apply.

Pinned environment probe: `nix develop -c bash -c` running tool version commands,
exit 0: Rust 1.98.1 (`48a229cea`), Cargo 1.98.1 (`797e8a9bc`), Z3 4.16.0,
Nix 2.34.8. Edition 2024 and existing dependencies remain unchanged.
Existing ignore rules cover actual target/build, backup, Python cache/log and
environment outputs; no unrelated ignore convention was introduced.

This names the implementation starting point, not final delivery evidence.
016 and frozen 018 evidence retain their original revisions and interpretation.
New RED/GREEN evidence must name the actual source/test inputs used; none has
been executed merely by writing this document.
