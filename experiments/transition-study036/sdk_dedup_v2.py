"""Share identical closed SDK data files while preserving every path and byte."""

import argparse
import os
import stat
import time
from pathlib import Path
from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_analysis_v2
from resource_lease import tree_lease


def link_identical_v2(anchor, candidate):
    anchor, candidate = Path(anchor), Path(candidate)
    a, b = anchor.lstat(), candidate.lstat()
    if not stat.S_ISREG(a.st_mode) or not stat.S_ISREG(b.st_mode):
        raise ValueError("SdkSharingRegularFilesOnly")
    if (a.st_dev, a.st_ino) == (b.st_dev, b.st_ino):
        return dict(linked=False, reason="already_shared")
    if a.st_dev != b.st_dev or (stat.S_IMODE(a.st_mode), a.st_uid, a.st_gid) != (
        stat.S_IMODE(b.st_mode),
        b.st_uid,
        b.st_gid,
    ):
        return dict(linked=False, reason="different_metadata")
    if a.st_size != b.st_size:
        return dict(linked=False, reason="different_bytes")
    checksum = digest(anchor)
    if checksum != digest(candidate):
        return dict(linked=False, reason="different_bytes")
    with anchor.open("rb") as left, candidate.open("rb") as right:
        while True:
            x, y = left.read(1024**2), right.read(1024**2)
            if x != y:
                raise ValueError("SdkSharingByteComparisonChanged")
            if not x:
                break
    temp = candidate.with_name(".core036-share-" + candidate.name)
    if temp.exists() or temp.is_symlink():
        raise ValueError("SdkSharingTemporaryExists")
    now_a, now_b = anchor.lstat(), candidate.lstat()
    if (now_a.st_dev, now_a.st_ino, now_a.st_size, now_a.st_mtime_ns) != (
        a.st_dev,
        a.st_ino,
        a.st_size,
        a.st_mtime_ns,
    ) or (now_b.st_dev, now_b.st_ino, now_b.st_size, now_b.st_mtime_ns) != (
        b.st_dev,
        b.st_ino,
        b.st_size,
        b.st_mtime_ns,
    ):
        raise ValueError("SdkSharingWriterChanged")
    os.link(anchor, temp, follow_symlinks=False)
    os.replace(temp, candidate)
    result = candidate.lstat()
    if (result.st_dev, result.st_ino) != (a.st_dev, a.st_ino) or digest(
        candidate
    ) != checksum:
        raise ValueError("SdkSharingReplacementMismatch")
    return dict(
        linked=True,
        sha256=checksum,
        logical_bytes=b.st_size,
        released_unique_file_bytes=b.st_size if b.st_nlink == 1 else 0,
    )


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    d = read(args.declaration)
    P = Path(d["profile"]["roots"]["cache"])
    R = Path(__file__).resolve().parents[2]
    E = Path(__file__).resolve().parent
    W = R / "specs/036-core-transition-feasibility/evidence/v2" / d["work_id"]
    out = Path(args.out)
    if out != W / "attempts" / d["record_id"] / "sdk-sharing" or out.exists():
        raise ValueError("SdkSharingOutputOwnership")
    refs = RootRegistry(
        {"repository": R, "private": P, "work": W},
        readonly=["repository", "private", "work"],
    )
    config = read(E / "sdk-sharing-inputs-v2.json")
    if (
        set(config) != {"format", "closed_checkpoint_refs"}
        or config["format"] != "core036.sdk-sharing-inputs.v2"
    ):
        raise ValueError("SdkSharingInputContext")
    names = ["a0044", "a0045", "a0046", "a0049", "a0051", "a0107"]
    if len(config["closed_checkpoint_refs"]) != len(names):
        raise ValueError("SdkSharingClosedInputs")
    for name, reference in zip(names, config["closed_checkpoint_refs"], strict=True):
        cp = refs.verify(reference)
        RootRegistry({"attempt": cp.parent}).verify_closed("attempt")
        if (
            cp != W / "attempts" / name / "checkpoint.json"
            or read(cp)["outcome"]["operational"] != "closed"
        ):
            raise ValueError("SdkSharingUnclosedInput")
    check_prepared_analysis_v2(E / "analysis-environment-binding-v2.json")
    root_stat = P.stat()
    if root_stat.st_uid != os.geteuid() or stat.S_IMODE(root_stat.st_mode) != 0o700:
        raise ValueError("SdkSharingPrivateBoundary")
    anchor = P / "analysis-lean-install/a0051/sdk/lean-4.36.0-rc2-linux"
    prior = [
        P / "analysis-lean-install" / name / "sdk/lean-4.36.0-rc2-linux"
        for name in names[:4]
    ]
    for path in [anchor, *prior]:
        refs.path("private", str(path.relative_to(P)))
    candidates = sorted(
        p
        for p in (anchor / "lib/lean").rglob("*")
        if p.name.endswith(
            (".olean", ".olean.private", ".olean.server", ".ilean", ".a")
        )
        and p.is_file()
    )
    if not candidates or len(candidates) > 20000:
        raise ValueError("SdkSharingDataInventory")
    out.mkdir(parents=True)
    rows = []
    counts = {}
    released = 0
    started = time.monotonic_ns()
    with tree_lease(P) as nested:
        if not nested:
            raise ValueError("SdkSharingControllerLeaseRequired")
        for base in prior:
            for source in candidates:
                path = base / source.relative_to(anchor)
                if not path.exists():
                    continue
                refs.path("private", str(source.relative_to(P)))
                refs.path("private", str(path.relative_to(P)))
                result = link_identical_v2(source, path)
                reason = "linked" if result["linked"] else result["reason"]
                counts[reason] = counts.get(reason, 0) + 1
                if result["linked"]:
                    rows.append(
                        dict(
                            anchor=str(source.relative_to(P)),
                            candidate=str(path.relative_to(P)),
                            **result,
                        )
                    )
                    released += result["released_unique_file_bytes"]
                    time.sleep(0.002)
    write_once(out / "shared-files.json", rows)
    check_prepared_analysis_v2(E / "analysis-environment-binding-v2.json")
    write_once(
        out / "result.json",
        dict(
            format="core036.sdk-sharing-result.v2",
            source_subject_ref=d["source_subject_ref"],
            counts=counts,
            released_unique_file_bytes=released,
            wall_ns=time.monotonic_ns() - started,
            all_replaced_bytes_equal=True,
            scope="Same-device identical immutable Lean library data and static archives only. All SDK paths, contents, modes, tool executables, source archives and failed records retained. Ordinary resource ceilings unchanged.",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
