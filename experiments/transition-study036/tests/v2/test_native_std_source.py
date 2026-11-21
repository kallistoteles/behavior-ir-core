"""Acquisition/parser fixtures only, with no network, compiler or native proof."""

import base64
import copy
import hashlib
import unittest


class NativeStdSourceTests(unittest.TestCase):
    def fixture(self):
        from native_std_source_v2 import COMMIT, FILES, source_url

        path = FILES[0]
        raw = b"synthetic public source fixture; not an actual Rust source subject\n"
        blob = hashlib.sha1(b"blob " + str(len(raw)).encode() + b"\0" + raw).hexdigest()
        response = dict(
            type="file",
            name=path.rsplit("/", 1)[-1],
            path=path,
            encoding="base64",
            url=source_url(path),
            html_url=f"https://github.com/rust-lang/rust/blob/{COMMIT}/{path}",
            download_url=f"https://raw.githubusercontent.com/rust-lang/rust/{COMMIT}/{path}",
            size=len(raw),
            sha=blob,
            git_url=f"https://api.github.com/repos/rust-lang/rust/git/blobs/{blob}",
            content=base64.b64encode(raw).decode() + "\n",
        )
        return path, raw, response

    def test_exact_public_ref_and_git_blob_are_checked_without_execution(self):
        from native_std_source_v2 import checked_response, source_url

        path, raw, response = self.fixture()
        self.assertEqual(checked_response(path, response), raw)
        for wrong in (
            "../escape",
            "/absolute",
            "parameters.bin",
            "compression_prover_key.bin",
            "library/not-declared.rs",
        ):
            with self.subTest(path=wrong), self.assertRaises(ValueError):
                source_url(wrong)

    def test_wrong_identity_kind_size_encoding_or_content_is_rejected(self):
        from native_std_source_v2 import checked_response

        path, _, response = self.fixture()
        for field, value in [
            ("type", "symlink"),
            ("path", "other.rs"),
            ("url", "https://untrusted.example"),
            (
                "download_url",
                "https://raw.githubusercontent.com/rust-lang/rust/main/" + path,
            ),
            ("html_url", "https://github.com/rust-lang/rust/blob/main/" + path),
            ("encoding", "none"),
            ("size", True),
            ("size", 1_000_001),
            ("sha", "0" * 40),
            ("content", "not base64!"),
        ]:
            with self.subTest(field=field, value=value):
                bad = copy.deepcopy(response)
                bad[field] = value
                with self.assertRaises(ValueError):
                    checked_response(path, bad)
        bad = copy.deepcopy(response)
        bad["content"] = base64.b64encode(b"changed source").decode()
        bad["size"] = len(b"changed source")
        with self.assertRaises(ValueError):
            checked_response(path, bad)

    def test_compiler_release_commit_host_and_unique_fields_are_bound(self):
        from native_std_source_v2 import COMMIT, checked_native_version

        stdout = (
            "rustc 1.98.1 (48a229cea 2026-09-03)\n"
            "binary: rustc\ncommit-hash: "
            + COMMIT
            + "\nrelease: 1.98.1\nhost: x86_64-unknown-linux-gnu\n"
        )
        self.assertEqual(checked_native_version(stdout)["commit-hash"], COMMIT)
        for changed in (
            stdout.replace(COMMIT, "0" * 40),
            stdout.replace("release: 1.98.1", "release: 1.100.0"),
            stdout.replace("host: x86_64", "host: aarch64"),
            stdout + "release: 1.98.1\n",
        ):
            with self.subTest(changed=changed), self.assertRaises(ValueError):
                checked_native_version(changed)
