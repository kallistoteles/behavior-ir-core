"""Actual filesystem controls for the event-driven storage inventory."""

import os
import shutil
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

from recorder import v2_footprints
from storage_observer import IncrementalStorage, StorageEventsLost


class StorageObserverTests(unittest.TestCase):
    def test_deleted_registered_root_is_not_reauthorized_by_recreation(self):
        with tempfile.TemporaryDirectory() as d:
            roots = self.roots(Path(d))
            root = roots["artifacts"]
            with IncrementalStorage(roots) as observer:
                root.rmdir()
                root.mkdir()
                with self.assertRaisesRegex(StorageEventsLost, "StorageGuardWatchLost"):
                    observer.snapshot()

    def test_removed_and_recreated_compiler_scratch_directory_is_observed(self):
        with tempfile.TemporaryDirectory() as d:
            roots = self.roots(Path(d))
            folder = roots["temporary"] / "compiler-scratch"
            folder.mkdir()
            with IncrementalStorage(roots) as observer:
                for number in range(256):
                    shutil.rmtree(folder)
                    folder.mkdir()
                    (folder / "output").write_bytes(bytes(number % 31))
                    self.matches(observer, roots)

    def test_queued_directory_attributes_follow_a_matched_rename(self):
        with tempfile.TemporaryDirectory() as d:
            roots = self.roots(Path(d))
            old = roots["temporary"] / "index.new"
            for n in range(10):
                folder = old / str(n)
                folder.mkdir(parents=True)
                (folder / "file").write_bytes(b"data")
            new = roots["temporary"] / "index"
            with IncrementalStorage(roots) as observer:
                with patch.object(observer, "_scan", wraps=observer._scan) as scan:
                    for n in range(10):
                        os.utime(old / str(n), None)
                    old.rename(new)
                    self.matches(observer, roots)
                    rescanned = [
                        call.args[0]
                        for call in scan.call_args_list
                        if observer._under(call.args[0], str(new))
                    ]
                    self.assertEqual(rescanned, [])

    def test_live_directory_watch_loss_fails_closed(self):
        with tempfile.TemporaryDirectory() as d:
            roots = self.roots(Path(d))
            folder = roots["temporary"] / "watched"
            folder.mkdir()
            (folder / "file").write_bytes(b"data")
            with IncrementalStorage(roots) as observer:
                wd = observer.watches[str(folder)]
                self.assertEqual(observer.libc.inotify_rm_watch(observer.fd, wd), 0)
                with self.assertRaises(StorageEventsLost):
                    observer.snapshot()

    def test_directory_attributes_do_not_relist_unchanged_children(self):
        with tempfile.TemporaryDirectory() as d:
            roots = self.roots(Path(d))
            folder = roots["temporary"] / "population"
            folder.mkdir()
            for number in range(100):
                (folder / str(number)).write_bytes(b"data")
            with IncrementalStorage(roots) as observer:
                with patch.object(observer, "_scan", wraps=observer._scan) as scan:
                    os.utime(folder, None)
                    (folder / "0").write_bytes(
                        b"changed while directory metadata changes"
                    )
                    self.matches(observer, roots)
                    self.assertEqual(scan.call_count, 0)

    def test_same_role_rename_reuses_watched_subtree_and_keeps_later_writes(self):
        with tempfile.TemporaryDirectory() as d:
            roots = self.roots(Path(d))
            old = roots["temporary"] / "index.new"
            for n in range(10):
                folder = old / str(n)
                folder.mkdir(parents=True)
                (folder / "file").write_bytes(b"data")
            new = roots["temporary"] / "index"
            with IncrementalStorage(roots) as observer:
                with patch.object(observer, "_scan", wraps=observer._scan) as scan:
                    old.rename(new)
                    (new / "0/file").write_bytes(b"changed after rename")
                    self.matches(observer, roots)
                    rescanned = [
                        call.args[0]
                        for call in scan.call_args_list
                        if observer._under(call.args[0], str(new))
                    ]
                    self.assertEqual(rescanned, [])
                (new / "1/file").write_bytes(b"later write after cached path transfer")
                self.matches(observer, roots)

    def test_atomic_replacement_subtree_removal_and_alias_role_reassignment(self):
        with tempfile.TemporaryDirectory() as d:
            roots = self.roots(Path(d))
            population = roots["cache"] / "population"
            population.mkdir()
            for number in range(1000):
                (population / str(number)).write_bytes(b"data")
            source = roots["temporary"] / "source"
            source.write_bytes(b"payload")
            alias = roots["artifacts"] / "alias"
            os.link(source, alias)
            with IncrementalStorage(roots) as observer:
                self.matches(observer, roots)
                replacement = roots["cache"] / "replacement"
                replacement.write_bytes(b"new inode and different byte count")
                replacement.replace(population / "5")
                self.matches(observer, roots)
                source.unlink()
                self.matches(observer, roots)
                self.assertEqual(observer.snapshot()["artifacts"], len(b"payload"))
                shutil.rmtree(population)
                self.matches(observer, roots)
                alias.unlink()
                self.matches(observer, roots)
                self.assertEqual(observer.inode_accounts, {})

    def test_named_writes_do_not_rescan_large_sibling_population(self):
        with tempfile.TemporaryDirectory() as d:
            roots = self.roots(Path(d))
            population = roots["cache"] / "population"
            population.mkdir()
            for number in range(1000):
                (population / str(number)).write_bytes(b"data")
            with IncrementalStorage(roots) as observer:
                with patch.object(observer, "_scan", wraps=observer._scan) as scan:
                    (population / "5").write_bytes(b"changed named file")
                    self.matches(observer, roots)
                    self.assertEqual(scan.call_count, 0)
                (population / "new").write_bytes(b"new member")
                self.matches(observer, roots)
                (population / "new").unlink()
                self.matches(observer, roots)

    def test_normalized_event_paths_do_not_rebuild_path_objects(self):
        with tempfile.TemporaryDirectory() as d:
            roots = self.roots(Path(d))
            item = roots["cache"] / "existing"
            item.write_bytes(b"initial")
            with IncrementalStorage(roots) as observer:
                # Profiling the real package burst showed thousands of Path
                # parses. The observer already owns normalized absolute names.
                with patch(
                    "storage_observer.Path",
                    side_effect=AssertionError("ReparsedEventPath"),
                ):
                    item.write_bytes(b"changed")
                    nested = roots["temporary"] / "new" / "deep"
                    nested.mkdir(parents=True)
                    (nested / "å data").write_bytes(b"payload")
                    self.matches(observer, roots)
                    moved = roots["artifacts"] / "moved"
                    nested.parent.rename(moved)
                    self.matches(observer, roots)
                    shutil.rmtree(moved)
                    item.unlink()
                    self.matches(observer, roots)

    def test_atomic_replacement_refreshes_surviving_hardlink_count(self):
        with tempfile.TemporaryDirectory() as d:
            roots = self.roots(Path(d))
            original = roots["cache"] / "original"
            alias = roots["artifacts"] / "alias"
            original.write_bytes(b"old shared inode")
            os.link(original, alias)
            with IncrementalStorage(roots) as observer:
                replacement = roots["cache"] / "replacement"
                replacement.write_bytes(b"new inode")
                replacement.replace(original)
                self.matches(observer, roots)
                self.assertFalse(observer.unobserved_aliases)
                alias.write_bytes(b"surviving old inode remains observable")
                self.matches(observer, roots)

    def test_actual_unregistered_hardlink_alias_is_not_assumed_observable(self):
        with tempfile.TemporaryDirectory() as d:
            base = Path(d)
            roots = self.roots(base)
            file = roots["cache"] / "data"
            file.write_bytes(b"data")
            os.link(file, base / "outside-alias")
            with self.assertRaisesRegex(StorageEventsLost, "UnobservedHardlinkAlias"):
                IncrementalStorage(roots)

    def roots(self, base):
        roots = {
            "cache": base / "cache",
            "temporary": base / "cache/tmp",
            "artifacts": base / "out",
        }
        for path in roots.values():
            path.mkdir(parents=True, exist_ok=True)
        return roots

    def matches(self, observer, roots):
        expected = v2_footprints(roots)
        expected["shared_store"] = 0
        self.assertEqual(observer.snapshot(), expected)

    def test_actual_create_append_truncate_delete_and_nested_population(self):
        with tempfile.TemporaryDirectory() as d:
            roots = self.roots(Path(d))
            with IncrementalStorage(roots) as observer:
                file = roots["cache"] / "data"
                file.write_bytes(b"abc")
                self.matches(observer, roots)
                with file.open("ab") as stream:
                    stream.write(b"additional bytes")
                self.matches(observer, roots)
                file.write_bytes(b"x")
                self.matches(observer, roots)
                deep = roots["temporary"] / "a/b/c"
                deep.mkdir(parents=True)
                (deep / "payload").write_bytes(b"abcdef")
                self.matches(observer, roots)
                shutil.rmtree(roots["temporary"] / "a")
                file.unlink()
                self.matches(observer, roots)

    def test_actual_hardlink_inode_updates_and_symlink_non_traversal(self):
        with tempfile.TemporaryDirectory() as d:
            base = Path(d)
            roots = self.roots(base)
            source = roots["cache"] / "source"
            source.write_bytes(b"one")
            alias = roots["artifacts"] / "alias"
            os.link(source, alias)
            outside = base / "not-owned"
            outside.write_bytes(b"outside" * 100)
            with IncrementalStorage(roots) as observer:
                self.matches(observer, roots)
                source.write_bytes(b"a different length through one alias")
                self.matches(observer, roots)
                os.symlink(outside, roots["cache"] / "link")
                self.matches(observer, roots)
                alias.unlink()
                self.matches(observer, roots)

    def test_actual_cross_root_rename_and_replaced_directory(self):
        with tempfile.TemporaryDirectory() as d:
            roots = self.roots(Path(d))
            old = roots["cache"] / "tree"
            old.mkdir()
            (old / "first").write_bytes(b"abc")
            with IncrementalStorage(roots) as observer:
                new = roots["artifacts"] / "moved"
                old.rename(new)
                old.mkdir()
                (old / "replacement").write_bytes(b"new tree")
                (new / "first").write_bytes(b"renamed file with a new length")
                self.matches(observer, roots)
                (new / "later").write_bytes(b"observed after rename")
                self.matches(observer, roots)

    def test_selected_external_files_and_new_shared_subtree(self):
        with tempfile.TemporaryDirectory() as d:
            base = Path(d)
            roots = self.roots(base)
            control = base / "control.py"
            control.write_bytes(b"control")
            shared = base / "shared"
            with IncrementalStorage(
                roots, controls=[control], shared_paths=[shared]
            ) as observer:
                self.assertEqual(observer.snapshot()["artifacts"], 7)
                control.write_bytes(b"changed control")
                self.assertEqual(observer.snapshot()["artifacts"], 15)
                (shared / "lib").mkdir(parents=True)
                (shared / "lib/data").write_bytes(b"substitute")
                self.assertEqual(observer.snapshot()["shared_store"], 10)
                shutil.rmtree(shared)
                self.assertEqual(observer.snapshot()["shared_store"], 0)

    def test_queue_overflow_record_fails_closed_unit_control(self):
        # This is deliberately a parser/control injection, not a claim that
        # a real kernel queue has been overflowed. Real overflow remains a
        # separate resource-supervised integration control.
        with tempfile.TemporaryDirectory() as d:
            with IncrementalStorage(self.roots(Path(d))) as observer:
                raw = observer._EVENT.pack(-1, observer._Q_OVERFLOW, 0, 0)
                with patch("storage_observer.os.read", return_value=raw):
                    with self.assertRaisesRegex(StorageEventsLost, "QueueOverflow"):
                        observer.snapshot()

    def test_actual_guard_loss_is_not_silently_ignored(self):
        with tempfile.TemporaryDirectory() as d:
            base = Path(d)
            roots = self.roots(base)
            parent = base / "external"
            parent.mkdir()
            control = parent / "input"
            control.write_bytes(b"data")
            with IncrementalStorage(roots, controls=[control]) as observer:
                shutil.rmtree(parent)
                with self.assertRaisesRegex(StorageEventsLost, "GuardWatchLost"):
                    observer.snapshot()

    def test_file_directory_replacement_keeps_no_stale_inode(self):
        with tempfile.TemporaryDirectory() as d:
            roots = self.roots(Path(d))
            item = roots["cache"] / "replaced"
            item.write_bytes(b"former file contents")
            with IncrementalStorage(roots) as observer:
                self.matches(observer, roots)
                item.unlink()
                item.mkdir()
                (item / "new").write_bytes(b"new directory member")
                self.matches(observer, roots)
                shutil.rmtree(item)
                item.write_bytes(b"back to a file")
                self.matches(observer, roots)
