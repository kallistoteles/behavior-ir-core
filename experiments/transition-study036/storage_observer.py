"""Event-invalidated metadata inventories for the v2 resource observer.

Named events refresh the affected node; a new or replaced directory receives a
full subtree inventory. Queue overflow, unknown watch loss and unreadable paths
fail closed. Final closure requires an independent full inventory.
"""

import ctypes
import errno
import os
import stat
import struct
from pathlib import Path


class StorageEventsLost(RuntimeError):
    pass


class IncrementalStorage:
    _EVENT = struct.Struct("iIII")
    _MODIFY = 0x00000002
    _ATTRIB = 0x00000004
    _CLOSE_WRITE = 0x00000008
    _MOVED_FROM = 0x00000040
    _MOVED_TO = 0x00000080
    _CREATE = 0x00000100
    _DELETE = 0x00000200
    _DELETE_SELF = 0x00000400
    _MOVE_SELF = 0x00000800
    _Q_OVERFLOW = 0x00004000
    _IGNORED = 0x00008000
    _ISDIR = 0x40000000
    _MASK = (
        _MODIFY
        | _ATTRIB
        | _CLOSE_WRITE
        | _MOVED_FROM
        | _MOVED_TO
        | _CREATE
        | _DELETE
        | _DELETE_SELF
        | _MOVE_SELF
    )

    def __init__(self, roots, *, controls=(), shared_paths=()):
        self.closed = False
        self.libc = ctypes.CDLL(None, use_errno=True)
        self.libc.inotify_init1.argtypes = [ctypes.c_int]
        self.libc.inotify_init1.restype = ctypes.c_int
        self.libc.inotify_add_watch.argtypes = [
            ctypes.c_int,
            ctypes.c_char_p,
            ctypes.c_uint32,
        ]
        self.libc.inotify_add_watch.restype = ctypes.c_int
        self.libc.inotify_rm_watch.argtypes = [ctypes.c_int, ctypes.c_int]
        self.libc.inotify_rm_watch.restype = ctypes.c_int
        self.fd = self.libc.inotify_init1(os.O_CLOEXEC | os.O_NONBLOCK)
        if self.fd < 0:
            raise OSError(ctypes.get_errno(), "inotify_init1")
        self.roots = {
            role: str(Path(path).resolve())
            for role, path in roots.items()
            if role != "shared_store"
        }
        if len(set(self.roots.values())) != len(self.roots):
            self.close()
            raise ValueError("StorageDuplicateRoot")
        self.order = sorted(
            self.roots, key=lambda role: (-len(Path(self.roots[role]).parts), role)
        )
        self.selected = {}
        self.selected_subtrees = set()
        self.root_guards = set(self.roots.values())
        self.files = {}  # absolute path -> (device, inode, bytes, role)
        self.inode_sizes = {}
        self.inode_links = {}
        self.inode_paths = {}
        self.inode_accounts = {}
        self.unobserved_aliases = set()
        self.totals = {role: 0 for role in (*self.roots, "shared_store")}
        self.priorities = {
            role: n for n, role in enumerate(self.order + ["shared_store"])
        }
        self.directories = {}  # absolute path -> (device/inode, direct children)
        self.watches = {}  # path -> wd
        self.by_wd = {}
        self.dirty = set()
        self.retired_watches = set()
        self.deleted_watches = set()
        self.moves = {}
        self.move_self = set()
        self.rebased_watches = set()
        self.directory_attributes = {}
        self.generation = 0
        try:
            for path in self.root_guards:
                self._watch(str(Path(path).parent))
            for role in self.order:
                root = self.roots[role]
                if not any(self._under(root, other) for other in self.directories):
                    self._scan(root)
            for raw in controls:
                path = str(Path(raw))
                if self._role(path) is None:
                    self.selected[path] = "artifacts"
            for raw in shared_paths:
                path = str(Path(raw))
                if self._role(path) is None:
                    self.selected[path] = "shared_store"
            for path in self.selected:
                self._watch(str(Path(path).parent))
                self._selected(path)
            self.snapshot()
        except BaseException:
            self.close()
            raise

    @staticmethod
    def _under(path, parent):
        return path == parent or path.startswith(parent + os.sep)

    def _role(self, path):
        for role in self.order:
            if self._under(path, self.roots[role]):
                return role
        if path in self.selected:
            return self.selected[path]
        for selected in self.selected_subtrees:
            if self._under(path, selected):
                return self.selected[selected]
        return None

    def _watch(self, path):
        if path in self.watches:
            return
        wd = self.libc.inotify_add_watch(self.fd, os.fsencode(path), self._MASK)
        if wd < 0:
            raise OSError(ctypes.get_errno(), "inotify_add_watch", path)
        if wd in self.by_wd and self.by_wd[wd] != path:
            # A watch follows its inode through rename. The destination may
            # be scanned before the old parent; transfer only after proving
            # that the old path no longer names this same directory.
            old_path = self.by_wd[wd]
            current = os.lstat(path)
            try:
                previous = os.lstat(old_path)
            except (FileNotFoundError, NotADirectoryError):
                previous = None
            if previous is not None and (previous.st_dev, previous.st_ino) == (
                current.st_dev,
                current.st_ino,
            ):
                raise StorageEventsLost("AliasedDirectoryWatch")
            self.watches.pop(old_path, None)
        self.watches[path] = wd
        self.by_wd[wd] = path

    def _account(self, key):
        previous = self.inode_accounts.pop(key, None)
        if previous is not None:
            self.totals[previous[1]] -= previous[0]
        aliases = self.inode_paths.get(key)
        if not aliases:
            self.inode_paths.pop(key, None)
            self.inode_sizes.pop(key, None)
            self.inode_links.pop(key, None)
            self.unobserved_aliases.discard(key)
            return
        role = min(
            (self.files[path][3] for path in aliases), key=self.priorities.__getitem__
        )
        value = (self.inode_sizes[key], role)
        self.inode_accounts[key] = value
        self.totals[role] += value[0]
        if self.inode_links[key] > len(aliases):
            self.unobserved_aliases.add(key)
        else:
            self.unobserved_aliases.discard(key)

    def _refresh_aliases(self, key):
        # Replacing one directory entry changes the surviving inode's link
        # count without necessarily notifying the other aliases' parents.
        for alias in tuple(self.inode_paths.get(key, ())):
            try:
                info = os.lstat(alias)
            except (FileNotFoundError, NotADirectoryError):
                self.dirty.add(alias)
                continue
            if (info.st_dev, info.st_ino) == key:
                self.inode_links[key] = info.st_nlink
                self.inode_sizes[key] = info.st_size
            else:
                self.dirty.add(alias)
        if key in self.inode_paths:
            self._account(key)

    def _remove_file(self, path, *, refresh_aliases=True):
        previous = self.files.pop(path, None)
        if previous is not None:
            key = previous[:2]
            self.inode_paths[key].remove(path)
            self._account(key)
            if refresh_aliases:
                self._refresh_aliases(key)
        return previous

    def _forget(self, path):
        # Walk the indexed subtree, never the unrelated file population.
        pending, directories, affected = [path], [], set()
        while pending:
            current = pending.pop()
            previous = self._remove_file(current, refresh_aliases=False)
            if previous is not None:
                affected.add(previous[:2])
            directory = self.directories.pop(current, None)
            if directory is not None:
                pending.extend(directory[1])
                directories.append(current)
        # An unlink need not notify a surviving hardlink's parent.
        for key in affected:
            self._refresh_aliases(key)
        for directory in directories:
            wd = self.watches.pop(directory, None)
            if wd is not None:
                self.by_wd.pop(wd, None)
                self.retired_watches.add(wd)
                if (
                    self.libc.inotify_rm_watch(self.fd, wd) < 0
                    and ctypes.get_errno() != errno.EINVAL
                ):
                    raise OSError(ctypes.get_errno(), "inotify_rm_watch")

    def _file(self, path, info, role):
        key = (info.st_dev, info.st_ino)
        previous = self.files.get(path)
        if previous is not None and previous[:2] != key:
            self._remove_file(path)
        self.files[path] = (*key, info.st_size, role)
        self.inode_paths.setdefault(key, set()).add(path)
        self.inode_sizes[key] = info.st_size
        self.inode_links[key] = info.st_nlink
        self._account(key)

    def _selected(self, path):
        try:
            info = os.lstat(path)
        except (FileNotFoundError, NotADirectoryError):
            self._forget(path)
            return
        if stat.S_ISDIR(info.st_mode):
            self.selected_subtrees.add(path)
            self._scan(path)
        else:
            self.selected_subtrees.discard(path)
            if path in self.directories:
                self._forget(path)
            self._file(path, info, self.selected[path])

    def _scan(self, path):
        try:
            info = os.lstat(path)
        except (FileNotFoundError, NotADirectoryError):
            self._forget(path)
            return
        if not stat.S_ISDIR(info.st_mode):
            self._forget(path)
            return
        # A named event may replace a previously indexed file or symlink with
        # a directory. Its old inode must leave byte accounting before this
        # directory is indexed; directory inodes themselves are not payload.
        self._remove_file(path)
        identity = (info.st_dev, info.st_ino)
        old = self.directories.get(path)
        if old is not None and old[0] != identity:
            self._forget(path)
            old = None
        self._watch(path)  # before listing: concurrent writes invalidate this scan
        children = set()
        try:
            entries = os.scandir(path)
        except (FileNotFoundError, NotADirectoryError):
            self._forget(path)
            return
        with entries:
            for entry in entries:
                try:
                    item = entry.stat(follow_symlinks=False)
                except (FileNotFoundError, NotADirectoryError):
                    continue
                name = entry.path
                children.add(name)
                if stat.S_ISDIR(item.st_mode):
                    previous = self.directories.get(name)
                    if previous is None or previous[0] != (item.st_dev, item.st_ino):
                        self._remove_file(name)
                        self._scan(name)
                else:
                    if name in self.directories:
                        self._forget(name)
                    role = self._role(name)
                    if role is None:
                        raise StorageEventsLost("UnassignedStoragePath")
                    self._file(name, item, role)
        if old is not None:
            for missing in old[1] - children:
                self._forget(missing)
        self.directories[path] = (identity, children)

    def _refresh_node(self, path):
        """A named file event does not require relisting all its siblings."""
        parent = os.path.dirname(path)
        try:
            info = os.lstat(path)
        except (FileNotFoundError, NotADirectoryError):
            self._forget(path)
            if parent in self.directories:
                self.directories[parent][1].discard(path)
            return
        if stat.S_ISDIR(info.st_mode):
            self._scan(path)
        else:
            if path in self.directories:
                self._forget(path)
            role = self._role(path)
            if role is None:
                raise StorageEventsLost("UnassignedStoragePath")
            self._file(path, info, role)
        if parent in self.directories:
            self.directories[parent][1].add(path)

    def _relocate(self, source, destination):
        """Reuse a watched same-role subtree only with matching live identity."""
        old = self.directories.get(source)
        role = self._role(source)
        if (
            old is None
            or role is None
            or role != self._role(destination)
            or self._under(source, destination)
            or self._under(destination, source)
            or destination in self.directories
            or destination in self.files
            or any(
                self._under(protected, source) or self._under(protected, destination)
                for protected in self.root_guards | set(self.selected)
            )
        ):
            return False
        try:
            current = os.lstat(destination)
        except (FileNotFoundError, NotADirectoryError):
            return False
        if (
            not stat.S_ISDIR(current.st_mode)
            or (current.st_dev, current.st_ino) != old[0]
        ):
            return False
        try:
            previous = os.lstat(source)
        except (FileNotFoundError, NotADirectoryError):
            previous = None
        if previous is not None and (previous.st_dev, previous.st_ino) == old[0]:
            return False

        def rename(path):
            return destination + path[len(source) :]

        pending, directories, files = [source], [], []
        while pending:
            path = pending.pop()
            if rename(path) in self.directories or rename(path) in self.files:
                return False
            directory = self.directories.get(path)
            if directory is not None:
                wd = self.watches.get(path)
                if wd is None or self.by_wd.get(wd) != path:
                    return False
                directories.append((path, directory, wd))
                pending.extend(directory[1])
            elif path in self.files:
                if self.files[path][3] != self._role(rename(path)):
                    return False
                files.append(path)
            else:
                return False
        # No payload/link count/role changes: only replace indexed alias names.
        for path in files:
            value = self.files.pop(path)
            target = rename(path)
            self.files[target] = value
            aliases = self.inode_paths[value[:2]]
            aliases.remove(path)
            aliases.add(target)
        for path, (identity, children), wd in directories:
            del self.directories[path]
            del self.watches[path]
            target = rename(path)
            self.directories[target] = (identity, {rename(child) for child in children})
            self.watches[target] = wd
            self.by_wd[wd] = target
            self.rebased_watches.add(wd)
        for parent, child, add in (
            (os.path.dirname(source), source, False),
            (os.path.dirname(destination), destination, True),
        ):
            if parent in self.directories:
                members = self.directories[parent][1]
                members.add(child) if add else members.discard(child)
        self.dirty = {
            rename(path) if self._under(path, source) else path
            for path in self.dirty
            if path != source
        }
        if previous is not None:
            # A different inode may already occupy the vacated source name.
            self.dirty.add(source)
        self.moves = {
            cookie: rename(path) if self._under(path, source) else path
            for cookie, path in self.moves.items()
        }
        self.directory_attributes = {
            rename(path) if self._under(path, source) else path: identity
            for path, identity in self.directory_attributes.items()
        }
        return True

    def _flush_move_self(self):
        for path, identity in self.directory_attributes.items():
            known = self.directories.get(path)
            if known is not None and known[0] == identity:
                try:
                    info = os.lstat(path)
                except (FileNotFoundError, NotADirectoryError):
                    info = None
                if (
                    info is not None
                    and stat.S_ISDIR(info.st_mode)
                    and (info.st_dev, info.st_ino) == identity
                ):
                    continue
            self.dirty.add(path)
        self.directory_attributes.clear()
        for wd in self.move_self:
            path = self.by_wd.get(wd)
            if path is None:
                continue
            directory = self.directories.get(path)
            if wd in self.rebased_watches and directory is not None:
                try:
                    info = os.lstat(path)
                except (FileNotFoundError, NotADirectoryError):
                    info = None
                if (
                    info is not None
                    and stat.S_ISDIR(info.st_mode)
                    and (info.st_dev, info.st_ino) == directory[0]
                ):
                    continue
            self.dirty.update((path, os.path.dirname(path)))
        self.move_self.clear()

    def _drain(self):
        received = False
        for _ in range(64):
            try:
                raw = os.read(self.fd, 1024 * 1024)
            except BlockingIOError:
                self._flush_move_self()
                return received
            if not raw:
                raise StorageEventsLost("StorageWatchClosed")
            received = True
            offset = 0
            while offset < len(raw):
                wd, mask, cookie, size = self._EVENT.unpack_from(raw, offset)
                offset += self._EVENT.size
                name = os.fsdecode(raw[offset : offset + size].split(b"\0", 1)[0])
                offset += size
                if mask & self._Q_OVERFLOW:
                    raise StorageEventsLost("StorageEventQueueOverflow")
                if mask & self._IGNORED:
                    if wd in self.retired_watches:
                        self.retired_watches.remove(wd)
                        self.deleted_watches.discard(wd)
                        continue
                    path = self.by_wd.pop(wd, None)
                    if path is not None:
                        if (
                            path not in self.directories
                            or path in self.root_guards
                        ):
                            raise StorageEventsLost("StorageGuardWatchLost")
                        try:
                            info = os.lstat(path)
                        except (FileNotFoundError, NotADirectoryError):
                            info = None
                        if (
                            info is not None
                            and stat.S_ISDIR(info.st_mode)
                            and (info.st_dev, info.st_ino) == self.directories[path][0]
                            and wd not in self.deleted_watches
                        ):
                            raise StorageEventsLost("LiveDirectoryWatchLost:" + path)
                        self.watches.pop(path, None)
                        # A deleted directory can be recreated with the same
                        # inode number before queued events are drained. Its
                        # DELETE_SELF proves the old watch ended normally;
                        # rescan and install a new watch even if dev/ino match.
                        self.dirty.update((path, os.path.dirname(path)))
                    self.deleted_watches.discard(wd)
                    continue
                parent = self.by_wd.get(wd)
                if parent is None:
                    if wd in self.retired_watches:
                        continue
                    raise StorageEventsLost("UnknownStorageWatch")
                if parent in self.directories:
                    if mask & self._DELETE_SELF:
                        self.deleted_watches.add(wd)
                    path = os.path.join(parent, name) if name else parent
                    if mask & self._ISDIR and mask & self._MASK == self._ATTRIB:
                        known = self.directories.get(path)
                        self.directory_attributes[path] = known[0] if known else None
                        continue
                    if mask & self._MOVED_FROM and mask & self._ISDIR and cookie:
                        self.moves[cookie] = path
                    if mask & self._MOVED_TO and mask & self._ISDIR and cookie:
                        source = self.moves.pop(cookie, None)
                        if source is not None and self._relocate(source, path):
                            continue
                    if mask & self._MOVE_SELF:
                        self.move_self.add(wd)
                        if mask & self._MASK == self._MOVE_SELF:
                            continue
                    self.dirty.add(path)
                    if mask & self._DELETE_SELF:
                        self.dirty.add(os.path.dirname(parent))
                elif name:
                    selected = os.path.join(parent, name)
                    if selected in self.selected or selected in self.root_guards:
                        self.dirty.add(selected)
        raise StorageEventsLost("StorageObserverEventFlood")

    def snapshot(self):
        if self.closed:
            raise StorageEventsLost("StorageObserverClosed")
        # Bounded drain: a continuously changing tree cannot silently starve
        # the resource loop. Such a burst requires stopping/revising the run.
        for _ in range(64):
            self._drain()
            if not self.dirty:
                break
            changed, self.dirty = self.dirty, set()
            for path in sorted(changed, key=len):
                if path in self.selected:
                    self._selected(path)
                elif self._role(path) is not None:
                    self._refresh_node(path)
        else:
            raise StorageEventsLost(
                "StorageObserverCannotQuiesce:"
                + repr(
                    {
                        "pending_count": len(self.dirty),
                        "pending_paths": sorted(self.dirty)[:8],
                    }
                )
            )
        # The closed-alias and per-role inode totals are maintained on every
        # changed node, avoiding an O(all files) rebuild at each sample.
        if self.unobserved_aliases:
            raise StorageEventsLost("UnobservedHardlinkAlias")
        self.generation += 1
        self.moves.clear()
        self.rebased_watches.clear()
        return dict(self.totals)

    def close(self):
        if not self.closed:
            os.close(self.fd)
            self.closed = True

    def diagnose_metadata(self, limit=64):
        """Bounded records for a failed final audit; never repair acceptance.

        Inspect metadata only. This runs after process closure and only on a
        mismatch, keeping the regular sampling path proportional to changes.
        """
        differences = []
        count = 0
        for path, cached in self.files.items():
            expected = (*cached[:2], self.inode_sizes[cached[:2]])
            try:
                info = os.lstat(path)
                actual = (info.st_dev, info.st_ino, info.st_size)
            except (FileNotFoundError, NotADirectoryError):
                actual = None
            if expected != actual:
                count += 1
                if len(differences) < limit:
                    differences.append(
                        {"path": path, "cached": expected, "actual": actual}
                    )
        return {"changed_or_missing_count": count, "examples": differences}

    def __enter__(self):
        return self

    def __exit__(self, *_):
        self.close()
