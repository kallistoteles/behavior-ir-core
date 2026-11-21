"""Only registered, closed, owned disposable directories may be reclaimed."""

import hashlib
import os
import shutil
import time
from pathlib import Path
from artifact_io import RootRegistry


class OwnedCleanup:
    def __init__(self, private_root):
        root = Path(private_root)
        expected = Path("/var/tmp/behavior-ir-core036-v2")
        if (
            not root.is_absolute()
            or root.parent != expected
            or not root.name.startswith("w")
            or not root.name[1:].isdigit()
            or root.is_symlink()
        ):
            raise ValueError("V2CleanupOwner")
        stat = root.stat()
        if stat.st_uid != os.geteuid() or stat.st_mode & 0o077:
            raise ValueError("V2CleanupPrivateAccessBoundary")
        self.root = root
        self.registry = RootRegistry({"private": root})
        self.registrations = {}

    def _target(self, target):
        target = Path(target)
        if (
            not target.is_absolute()
            or ".." in target.parts
            or not target.is_relative_to(self.root / "disposable")
            or len(target.relative_to(self.root).parts) < 3
        ):
            raise ValueError("V2CleanupScope")
        path = self.registry.path(
            "private", str(target.relative_to(self.root)), writing=True
        )
        if not path.is_dir():
            raise ValueError("V2CleanupMissingDirectory")
        for item in path.rglob("*"):
            if item.is_symlink():
                raise ValueError("V2CleanupSymlink")
        return path

    def register(self, target, *, retained_refs, registry):
        target = self._target(target)
        if not isinstance(retained_refs, list) or not retained_refs:
            raise ValueError("V2CleanupRetentionRequired")
        retained = []
        for ref in retained_refs:
            path = registry.verify(ref)
            if path.is_relative_to(target):
                raise ValueError("V2RetainedArtifactInsideDisposable")
            retained.append(dict(ref))
        stat = target.stat()
        record = {
            "format": "core036.cleanup-registration.v2",
            "target": str(target),
            "device": stat.st_dev,
            "inode": stat.st_ino,
            "retained_refs": retained,
        }
        name = hashlib.sha256(str(target).encode()).hexdigest() + ".json"
        relative = "cleanup-registry/" + name
        saved = self.registry.path("private", relative, writing=True)
        if saved.exists():
            if (
                self.registry.read({**self.registry.reference("private", relative)})
                != record
            ):
                raise ValueError("V2CleanupRegistrationSubjectChanged")
        else:
            self.registry.write("private", relative, record)
        self.registrations[target] = (record, registry)
        return record

    @staticmethod
    def _live_users(target):
        from recorder import _proc_rows

        rows = _proc_rows()
        owned = {os.getpid()}
        while True:
            expanded = owned | {
                pid for pid, row in rows.items() if row["ppid"] in owned
            }
            if expanded == owned:
                break
            owned = expanded
        users = []
        for proc in Path("/proc").iterdir():
            if not proc.name.isdigit() or int(proc.name) not in owned:
                continue
            try:
                # Inspect this controller's descendants. Other participating
                # controllers must hold the same lease while using a target;
                # an interrupted/unclosed runner leaves an active-tree fence.
                if proc.stat().st_uid != os.geteuid():
                    continue
                paths = [proc / "cwd", proc / "exe", *list((proc / "fd").iterdir())]
                for path in paths:
                    try:
                        dest = Path(os.readlink(path).removesuffix(" (deleted)"))
                    except FileNotFoundError:
                        continue
                    if dest.is_absolute() and dest.is_relative_to(target):
                        users.append(int(proc.name))
                        break
                for line in (proc / "maps").read_text().splitlines():
                    parts = line.split(None, 5)
                    if len(parts) == 6 and parts[5].startswith("/"):
                        path = Path(parts[5].removesuffix(" (deleted)"))
                        if path.is_relative_to(target):
                            users.append(int(proc.name))
                            break
            except (FileNotFoundError, ProcessLookupError):
                continue
            except PermissionError as exc:
                raise ValueError("V2CleanupProcessInspectionUnavailable") from exc
        return sorted(set(users))

    def dispose(self, target, *, paced=False):
        if type(paced) is not bool:
            raise ValueError("V2CleanupPacing")
        start = time.monotonic_ns()
        target = self._target(target)
        if target not in self.registrations:
            raise ValueError("V2UnregisteredDisposable")
        record, registry = self.registrations[target]
        stat = target.stat()
        if (stat.st_dev, stat.st_ino) != (record["device"], record["inode"]):
            raise ValueError("V2DisposableReplaced")
        self.registry.path("private", "process.lock", writing=True)
        from resource_lease import tree_lease

        with tree_lease(self.root) as nested:
            if not nested and (self.root / "active-tree.json").exists():
                raise ValueError("V2CleanupUnclosedTreeFence")
            for ref in record["retained_refs"]:
                registry.verify(ref)
            if self._live_users(target):
                raise ValueError("V2CleanupLiveTarget")
            # This directory is controller-owned, and the same tree lease is
            # required by every supervised writer. No untrusted writer may
            # replace entries between inspection and reclamation.
            if paced:
                batch_entries = 0
                # Bound the event burst so the independent sampler can keep
                # its unchanged one-second deadline while large trees vanish.
                for _, directories, files, fd in os.fwalk(
                    target, topdown=False, follow_symlinks=False
                ):
                    for name in files:
                        if __import__("stat").S_ISLNK(
                            os.stat(name, dir_fd=fd, follow_symlinks=False).st_mode
                        ):
                            raise ValueError("V2CleanupSymlink")
                        os.unlink(name, dir_fd=fd)
                        time.sleep(0.002)
                        batch_entries += 1
                        if batch_entries % 8 == 0:
                            time.sleep(0.25)
                    for name in directories:
                        os.rmdir(name, dir_fd=fd)
                        time.sleep(0.002)
                        batch_entries += 1
                        if batch_entries % 8 == 0:
                            time.sleep(0.25)
                os.rmdir(target)
            else:
                shutil.rmtree(target)
        return {
            "format": "core036.cleanup.v2",
            "target": str(target),
            "wall_ns": time.monotonic_ns() - start,
            "closed_tree_checked": True,
            "retained_bytes_verified": sum(
                ref["bytes"] for ref in record["retained_refs"]
            ),
            "scope": "mode0700 owned disposable; controller descendants, work-wide tree lease and unclosed-tree fence; unrelated host processes outside ownership boundary",
        }
