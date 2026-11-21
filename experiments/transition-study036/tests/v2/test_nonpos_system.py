"""System prerequisites may use only a new privately owned local store."""

from pathlib import Path
import tempfile
import unittest


class NonposSystemTests(unittest.TestCase):
    def test_closure_admission_requires_bounded_complete_metadata(self):
        from nonpos_system_v2 import validate_closure

        name = "/nix/store/" + "0" * 32 + "-fixture"
        row = dict(
            narHash="sha256-" + "A" * 43 + "=",
            narSize=128,
            references=[name],
            signatures=["cache.nixos.org-1:fixture"],
        )
        self.assertEqual(validate_closure({name: row}, [name]), 128)
        for changed in (
            {name: {**row, "narSize": True}},
            {name: {**row, "narSize": 129 * 1024**2}},
            {name: {**row, "references": ["/outside"]}},
            {name: {**row, "signatures": []}},
            {},
        ):
            with self.assertRaises(ValueError):
                validate_closure(changed, [name])

    def test_store_uri_stays_in_owned_temporary_storage(self):
        from nonpos_system_v2 import private_store_uri

        with tempfile.TemporaryDirectory() as directory:
            private = Path(directory)
            scratch = private / "tmp/nonpos-system/a0001"
            scratch.mkdir(parents=True)
            self.assertEqual(
                private_store_uri(private, scratch),
                "local?root=" + str(scratch / "private-store"),
            )
            (scratch / "private-store").mkdir()
            with self.assertRaises(FileExistsError):
                private_store_uri(private, scratch)

    def test_global_outside_and_symlink_destinations_are_rejected(self):
        from nonpos_system_v2 import private_store_uri

        with tempfile.TemporaryDirectory() as directory:
            private = Path(directory) / "owned"
            private.mkdir()
            (private / "tmp").mkdir()
            outside = Path(directory) / "outside"
            outside.mkdir()
            (private / "tmp/link").symlink_to(outside, target_is_directory=True)
            for scratch in (Path("/nix/store"), outside, private / "tmp/link/attempt"):
                with self.assertRaises(ValueError):
                    private_store_uri(private, scratch)
