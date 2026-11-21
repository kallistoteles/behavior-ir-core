"""Reclaim fixed closed disposable build targets after retaining actual outputs."""

import argparse
import shutil
from pathlib import Path
from artifact_io import RootRegistry, read, write_once
from owned_cleanup import OwnedCleanup


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    R = Path(__file__).resolve().parents[2]
    out = Path(args.out)
    if out != private / "cleanup-builds" / declaration["record_id"] or out.exists():
        raise ValueError("BuildCleanupOutputOwnership")
    config = read(Path(__file__).with_name("cleanup-build-inputs-v2.json"))
    if (
        set(config) != {"format", "retained_refs", "closed_checkpoint_refs"}
        or config["format"] != "core036.build-cleanup.v2"
    ):
        raise ValueError("BuildCleanupInputContract")
    refs = RootRegistry(
        {"private": private, "repository": R}, readonly=["private", "repository"]
    )
    names = ["a0004", "a0086", "a0087", "a0088", "a0102"]
    if len(config["closed_checkpoint_refs"]) != len(names):
        raise ValueError("BuildCleanupClosedAttempts")
    for name, reference in zip(names, config["closed_checkpoint_refs"], strict=True):
        cp_path = refs.verify(reference)
        RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
        cp = refs.read(reference)
        if cp["attempt_id"] != name or cp["outcome"]["operational"] != "closed":
            raise ValueError("BuildCleanupUnclosedAttempt")
    cli = refs.read(config["retained_refs"][0])
    if (
        cli["format"] != "core036.core-cli-build.v2"
        or cli["command"]["exit_code"] != 0
        or cli["executable_ref"] not in config["retained_refs"]
    ):
        raise ValueError("BuildCleanupCliNotRetained")
    refs.verify(cli["executable_ref"])
    targets = [
        private / "disposable" / name / "target"
        for name in [
            "native-a0004",
            "analysis-a0086",
            "analysis-a0087",
            "analysis-a0088",
            "cli-a0102",
        ]
    ]
    cleanup = OwnedCleanup(private)
    out.mkdir(parents=True)
    # Preserve every ELF emitted in these closed caches, including test/build
    # executables, before deleting their disposable compilation intermediates.
    retained = list(config["retained_refs"])
    total = 0
    count = 0
    for target in targets:
        cleanup._target(target)
        for path in sorted(target.rglob("*")):
            if not path.is_file() or not path.stat().st_mode & 0o111:
                continue
            with path.open("rb") as stream:
                if stream.read(4) != b"\x7fELF":
                    continue
            total += path.stat().st_size
            count += 1
            if total > 512 * 1024**2 or count > 4096:
                raise ValueError("BuildCleanupExecutableRetentionBound")
            saved = out / "retained" / path.relative_to(private / "disposable")
            saved.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(path, saved)
            reference = refs.reference("private", str(saved.relative_to(private)))
            if reference["sha256"] != __import__("artifact_io").digest(path):
                raise ValueError("BuildCleanupExecutableChanged")
            retained.append(reference)
    write_once(out / "retained-executables.json", retained)
    registrations = [
        cleanup.register(target, retained_refs=retained, registry=refs)
        for target in targets
    ]
    write_once(out / "registrations.json", registrations)
    for i, target in enumerate(targets):
        write_once(out / f"cleanup-{i:02}.json", cleanup.dispose(target, paced=True))
    write_once(
        out / "result.json",
        dict(
            format="core036.build-cleanup-result.v2",
            removed=list(map(str, targets)),
            retained_refs=retained,
            scope="Closed disposable targets only; actual CLI/oracle/R/GV executables, source/proof/tool archives and raw evidence retained. Active native-a0007 and analysis-a0091 caches retained.",
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
