"""Reclaim only the two explicitly disposable Rust installation unpack copies."""

import argparse
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
    out = Path(args.out)
    if out != private / "cleanup" / declaration["record_id"] or out.exists():
        raise ValueError("CleanupOutputOwnership")
    config = read(Path(__file__).with_name("cleanup-unpack-inputs-v2.json"))
    if (
        set(config)
        != {"format", "retained_refs", "prior_checkpoint_ref", "completed_cleanup_refs"}
        or config["format"] != "core036.unpack-cleanup.v2"
    ):
        raise ValueError("CleanupInputContract")
    repository = Path(__file__).resolve().parents[2]
    refs = RootRegistry(
        {"private": private, "repository": repository},
        readonly=["private", "repository"],
    )
    cleanup = OwnedCleanup(private)
    out.mkdir(parents=True)
    targets = [
        private / "disposable" / ("analysis-unpack-" + attempt) / component
        for attempt in ("a0038", "a0039")
        for component in ("cargo", "rust-src", "rust-std", "rustc")
    ]
    prior_path = refs.verify(config["prior_checkpoint_ref"])
    if prior_path.name != "checkpoint.json":
        raise ValueError("CleanupPredecessorCheckpoint")
    RootRegistry({"attempt": prior_path.parent}).verify_closed("attempt")
    prior = refs.read(config["prior_checkpoint_ref"])
    if prior["outcome"]["operational"] != "closed":
        raise ValueError("CleanupPredecessorNotClosed")
    completed = set()
    for reference in config["completed_cleanup_refs"]:
        path = refs.verify(reference)
        if path.parent != private / "cleanup" / prior["attempt_id"]:
            raise ValueError("CleanupPriorReceiptOwnership")
        result = refs.read(reference)
        target = Path(result["target"])
        if (
            target not in targets
            or target.exists()
            or target in completed
            or result["closed_tree_checked"] is not True
        ):
            raise ValueError("CleanupPriorTargetMismatch")
        completed.add(target)
    targets = [target for target in targets if target not in completed]
    registrations = [
        cleanup.register(target, retained_refs=config["retained_refs"], registry=refs)
        for target in targets
    ]
    write_once(out / "registrations.json", registrations)
    for index, target in enumerate(targets):
        write_once(
            out / f"cleanup-{index:02d}.json", cleanup.dispose(target, paced=True)
        )
    write_once(
        out / "result.json",
        {
            "format": "core036.unpack-cleanup-result.v2",
            "removed": list(map(str, targets)),
            "retained_refs": config["retained_refs"],
            "scope": "closed disposable unpack copies only; installed tools, official archives, sources and all evidence retained",
        },
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
