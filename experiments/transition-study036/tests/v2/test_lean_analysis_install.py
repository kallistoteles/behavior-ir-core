import io
import tarfile
import tempfile
import unittest
from pathlib import Path

from lean_analysis_install import interpreter, unpack


class LeanArchiveTests(unittest.TestCase):
    def test_actual_sdk_static_and_dynamic_binaries_are_distinguished(self):
        sdk = Path(
            "/var/tmp/behavior-ir-core036-v2/w001/analysis-lean-install/a0049/sdk/lean-4.36.0-rc2-linux/bin"
        )
        self.assertIsNone(interpreter(sdk / "leantar"))
        self.assertEqual(
            interpreter(sdk / "lean"),
            "/nix/store/lm3pknxi0ipypy3lxh1wmm8wvvavdwrn-glibc-2.42-84/lib/ld-linux-x86-64.so.2",
        )

    def archive(self, name, *, kind=tarfile.REGTYPE, linkname=""):
        stream = io.BytesIO()
        with tarfile.open(fileobj=stream, mode="w") as archive:
            member = tarfile.TarInfo(name)
            member.type, member.linkname = kind, linkname
            member.size = 1 if kind == tarfile.REGTYPE else 0
            archive.addfile(member, io.BytesIO(b"x") if member.size else None)
        stream.seek(0)
        return stream

    def test_real_file_and_exact_count(self):
        with tempfile.TemporaryDirectory() as folder:
            target = Path(folder) / "sdk"
            self.assertEqual(
                unpack(self.archive("lean/bin/value"), target),
                {"members": 1, "expanded_bytes": 1},
            )
            self.assertEqual((target / "lean/bin/value").read_bytes(), b"x")

    def test_escaping_paths_links_and_special_members_are_rejected(self):
        for name, kind, linkname in [
            ("../escape", tarfile.REGTYPE, ""),
            ("/escape", tarfile.REGTYPE, ""),
            ("lean/link", tarfile.SYMTYPE, "../../escape"),
            ("lean/device", tarfile.CHRTYPE, ""),
        ]:
            with self.subTest(name=name), tempfile.TemporaryDirectory() as folder:
                with self.assertRaises((ValueError, tarfile.FilterError)):
                    unpack(
                        self.archive(name, kind=kind, linkname=linkname),
                        Path(folder) / "sdk",
                    )
                self.assertFalse((Path(folder) / "escape").exists())


if __name__ == "__main__":
    unittest.main()
