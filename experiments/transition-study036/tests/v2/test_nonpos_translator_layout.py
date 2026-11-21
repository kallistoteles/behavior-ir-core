"""Prospective tests only; not executed and not accepted evidence."""

from pathlib import Path
import tempfile
import unittest


class NonposTranslatorLayoutTests(unittest.TestCase):
    def sources(self, root):
        from nonpos_source_prepare_v2 import source_inventory

        aeneas, charon = root / "input-aeneas", root / "input-charon"
        (aeneas / "src").mkdir(parents=True)
        (aeneas / "src/Main.ml").write_bytes(b"let main = ()\n")
        (aeneas / "src/charon").symlink_to("../charon", target_is_directory=True)
        (charon / "charon-ml/src").mkdir(parents=True)
        (charon / "charon-ml/src/Types.ml").write_bytes(b"type value = int\n")
        roots = {"aeneas": aeneas, "charon": charon}
        inventory = {
            "candidate_aeneas": source_inventory(aeneas),
            "original": {"charon": source_inventory(charon)},
        }
        return roots, inventory

    def test_fresh_build_layout_resolves_the_original_charon_symlink(self):
        from nonpos_translator_build_v2 import materialize_sources

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            inputs, inventory = self.sources(root)
            target = root / "build"
            project = materialize_sources(inputs, inventory, target)
            self.assertEqual(project, target / "aeneas/src")
            self.assertTrue((project / "charon").is_symlink())
            self.assertEqual((project / "charon").readlink(), Path("../charon"))
            self.assertEqual((project / "charon").resolve(), target / "aeneas/charon")
            self.assertEqual(
                (project / "charon/charon-ml/src/Types.ml").read_bytes(),
                b"type value = int\n",
            )
            (project / "Main.ml").write_bytes(b"generated local change\n")
            self.assertEqual(
                (inputs["aeneas"] / "src/Main.ml").read_bytes(), b"let main = ()\n"
            )
            with self.assertRaises(FileExistsError):
                materialize_sources(inputs, inventory, target)

    def test_changed_source_and_wrong_link_are_rejected_before_copy(self):
        from nonpos_translator_build_v2 import materialize_sources

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            inputs, inventory = self.sources(root)
            (inputs["aeneas"] / "src/Main.ml").write_bytes(b"unbound source\n")
            with self.assertRaises(ValueError):
                materialize_sources(inputs, inventory, root / "bad")
            self.assertFalse((root / "bad").exists())
            (inputs["aeneas"] / "src/Main.ml").write_bytes(b"let main = ()\n")
            link = inputs["aeneas"] / "src/charon"
            link.unlink()
            link.symlink_to("../../escape", target_is_directory=True)
            from nonpos_source_prepare_v2 import source_inventory

            inventory["candidate_aeneas"] = source_inventory(inputs["aeneas"])
            with self.assertRaises(ValueError):
                materialize_sources(inputs, inventory, root / "wrong-link")
            self.assertFalse((root / "wrong-link").exists())
