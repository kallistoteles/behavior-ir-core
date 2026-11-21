"""The private build bootstrap accepts only publisher-bound tool bytes."""

import hashlib
import io
import tempfile
import unittest
from pathlib import Path
from unittest.mock import Mock


class NonposOpamTests(unittest.TestCase):
    def test_publisher_blob_and_exact_abi_checksum_are_required(self):
        from nonpos_opam_bootstrap_v2 import publisher_asset

        raw = b'opam-2.3.0-x86_64-linux) echo "' + b"a" * 128 + b'";;\n'
        blob = hashlib.sha1(b"blob " + str(len(raw)).encode() + b"\0" + raw).hexdigest()
        self.assertEqual(publisher_asset(raw, blob)["sha512"], "a" * 128)
        for changed, claimed in (
            (raw + b"\n", blob),
            (raw.replace(b"x86_64", b"arm64"), None),
            (raw + raw, None),
        ):
            if claimed is None:
                claimed = hashlib.sha1(
                    b"blob " + str(len(changed)).encode() + b"\0" + changed
                ).hexdigest()
            with self.assertRaises(ValueError):
                publisher_asset(changed, claimed)

    def test_bad_tool_bytes_and_bound_cannot_become_executable_payload(self):
        from nonpos_opam_bootstrap_v2 import URL, download_asset

        for payload, limit in ((b"wrong", 64), (b"valid", 4)):
            with tempfile.TemporaryDirectory() as directory:
                target = Path(directory) / "opam"
                asset = dict(
                    url=URL,
                    sha512=hashlib.sha512(b"valid").hexdigest(),
                    max_bytes=limit,
                )
                with self.assertRaises(ValueError):
                    download_asset(
                        asset, target, opener=Mock(return_value=io.BytesIO(payload))
                    )
                self.assertFalse(target.exists())

    def test_checked_download_is_create_once(self):
        from nonpos_opam_bootstrap_v2 import URL, download_asset

        with tempfile.TemporaryDirectory() as directory:
            target = Path(directory) / "opam"
            payload = b"valid"
            asset = dict(
                url=URL, sha512=hashlib.sha512(payload).hexdigest(), max_bytes=64
            )
            receipt = download_asset(
                asset, target, opener=Mock(return_value=io.BytesIO(payload))
            )
            self.assertEqual(target.read_bytes(), payload)
            self.assertEqual(receipt["bytes"], len(payload))
            opener = Mock()
            with self.assertRaises(FileExistsError):
                download_asset(asset, target, opener=opener)
            opener.assert_not_called()
            self.assertEqual(target.read_bytes(), payload)
