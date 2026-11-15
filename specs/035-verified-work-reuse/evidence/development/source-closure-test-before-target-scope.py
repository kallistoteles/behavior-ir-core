import hashlib, json, subprocess, sys, tempfile, unittest, shutil
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from sources import export, verify_export


class SourceTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.root = Path(self.tmp.name)
        self.repo = self.root / "repo"
        self.repo.mkdir()
        self.git("init", "-q")
        self.git("config", "user.email", "035@example.invalid")
        self.git("config", "user.name", "035 test")
        (self.repo / "Cargo.toml").write_text("[workspace]\n")
        (self.repo / "crates/e/src").mkdir(parents=True)
        (self.repo / "crates/e/src/lib.rs").write_text("pub fn constant()->u8{1}\n")
        self.git("add", ".")
        self.git("commit", "-qm", "fixture")
        self.rev = self.git("rev-parse", "HEAD").strip()
        self.paths = ["Cargo.toml", "crates/e/src/lib.rs"]

    def tearDown(self):
        self.tmp.cleanup()

    def git(self, *args):
        return subprocess.check_output(
            [
                "git",
                "-c",
                "maintenance.auto=false",
                "-c",
                "gc.auto=0",
                "-c",
                "commit.gpgsign=false",
                "-c",
                "core.hooksPath=/dev/null",
                "-C",
                str(self.repo),
                *args,
            ],
            text=True,
            stderr=subprocess.DEVNULL,
        )

    def make(self):
        return export(
            self.repo,
            self.rev,
            self.root / "out",
            paths=self.paths,
            required=self.paths,
        )

    def test_exact_valid_export_and_own_nonempty_index(self):
        m = self.make()
        self.assertEqual(len(m["files"]), 2)
        verify_export(self.root / "out", m)
        self.assertEqual(
            (self.root / "out/crates/e/src/lib.rs").read_bytes(),
            (self.repo / "crates/e/src/lib.rs").read_bytes(),
        )
        self.assertEqual(len(m["files"]), 2)
        self.assertEqual(
            subprocess.check_output(
                ["git", "-C", str(self.root / "out"), "rev-parse", "--show-toplevel"],
                text=True,
            ).strip(),
            str(self.root / "out"),
        )

    def test_changed_bytes_rejected_even_when_index_exists(self):
        m = self.make()
        self.assertEqual(len(m["files"]), 2)
        (self.root / "out/Cargo.toml").write_text("different")
        with self.assertRaisesRegex(ValueError, "SourceBytesChanged"):
            verify_export(self.root / "out", m)

    def test_wrong_index_blob_cannot_pass_candidate_inventory(self):
        m = self.make()
        out = self.root / "out"
        other = self.root / "other"
        other.write_text("wrong indexed bytes")
        blob = subprocess.check_output(
            ["git", "-C", str(out), "hash-object", "-w", str(other)], text=True
        ).strip()
        subprocess.check_call(
            [
                "git",
                "-C",
                str(out),
                "update-index",
                "--cacheinfo",
                "100644," + blob + ",Cargo.toml",
            ]
        )
        with self.assertRaisesRegex(ValueError, "GitIndexBytes"):
            verify_export(out, m)

    def test_missing_required_source_is_not_gate_readiness(self):
        with self.assertRaisesRegex(ValueError, "MissingRequiredSource"):
            export(
                self.repo,
                self.rev,
                self.root / "out",
                paths=self.paths,
                required=["missing.sh"],
            )

    def test_escape_and_unknown_revision_rejected(self):
        with self.assertRaises(ValueError):
            export(
                self.repo,
                self.rev,
                self.root / "out",
                paths=["../outside"],
                required=[],
            )
        with self.assertRaises(ValueError):
            export(
                self.repo,
                "not-an-exact-revision",
                self.root / "out2",
                paths=self.paths,
                required=self.paths,
            )

    def test_no_overwrite_or_enclosing_git_inventory(self):
        m = self.make()
        with self.assertRaises(FileExistsError):
            self.make()
        shutil.rmtree(self.root / "out/.git")
        with self.assertRaisesRegex(ValueError, "GitInventory"):
            verify_export(self.root / "out", m)

    def test_expected_patch_hash_and_budget_checked_before_apply(self):
        patch = self.root / "change.patch"
        patch.write_text("not a patch")
        with self.assertRaisesRegex(ValueError, "PatchHash"):
            export(
                self.repo,
                self.rev,
                self.root / "out",
                paths=self.paths,
                required=self.paths,
                patches=[{"path": str(patch), "sha256": "0" * 64}],
            )
        with self.assertRaisesRegex(ValueError, "ExportByteLimit"):
            export(
                self.repo,
                self.rev,
                self.root / "out2",
                paths=self.paths,
                required=self.paths,
                max_bytes=1,
            )


if __name__ == "__main__":
    unittest.main()

class RealGateSourceClosure(unittest.TestCase):
    def test_pinned_export_contains_every_literal_compiler_include(self):
        import re
        import sources
        with tempfile.TemporaryDirectory() as t:
            out=Path(t)/'candidate'
            sources.export(sources.ROOT,sources.CORE_REV,out)
            missing=[]
            for p in out.rglob('*.rs'):
                for name in re.findall(r'include_(?:str|bytes)!\(\s*"([^"\\]+)"',p.read_text()):
                    dependency=(p.parent/name).resolve()
                    if not dependency.is_relative_to(out.resolve()) or not dependency.is_file():missing.append(str(p.relative_to(out))+': '+name)
            self.assertEqual(missing,[], 'A canonical compiler input is absent from the owned export')
