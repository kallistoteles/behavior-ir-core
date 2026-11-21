"""Package planning cannot float the repository or inherit a caller's switch."""

import hashlib
import io
import json
import os
import socket
import subprocess
import tarfile
import tempfile
import unittest
from pathlib import Path


class NonposOpamPlanTests(unittest.TestCase):
    def test_recovery_requires_exact_source_delivered_index_and_configuration(self):
        from nonpos_opam_plan_v2 import verify_recovered_repository

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / "repository"
            delivered = root / "opamroot/repo/default"
            source.mkdir()
            delivered.mkdir(parents=True)
            raw = b'opam-version: "2.0"\n'
            for base in (source, delivered):
                (base / "repo").write_bytes(raw)
            config, repos = b"exact root config\n", b"exact repository config\n"
            (root / "opamroot/config").write_bytes(config)
            (root / "opamroot/repo/repos-config").write_bytes(repos)
            blob = hashlib.sha1(
                b"blob " + str(len(raw)).encode() + b"\0" + raw
            ).hexdigest()
            expected = {"repo": {"mode": "100644", "blob": blob}}
            self.assertEqual(
                verify_recovered_repository(root, expected, config, repos),
                root / "opamroot",
            )
            for file, replacement in (
                (source / "repo", b"altered source"),
                (delivered / "repo", b"altered delivery"),
                (root / "opamroot/config", b"wrong repositories"),
                (root / "opamroot/repo/repos-config", b"wrong remote"),
            ):
                original = file.read_bytes()
                file.write_bytes(replacement)
                with self.assertRaises(ValueError):
                    verify_recovered_repository(root, expected, config, repos)
                file.write_bytes(original)
            (delivered / "uncommitted").write_bytes(b"unbound package")
            with self.assertRaises(ValueError):
                verify_recovered_repository(root, expected, config, repos)
            (delivered / "uncommitted").unlink()
            (root / "opamroot/repo/default.new").mkdir()
            with self.assertRaises(ValueError):
                verify_recovered_repository(root, expected, config, repos)

    def test_repository_directory_preparation_is_paced_and_creates_no_payloads(self):
        from unittest.mock import patch
        from nonpos_opam_plan_v2 import prepare_repository_directories

        expected = {
            f"packages/p{index}/p{index}.1/opam": {"mode": "100644", "blob": "0" * 40}
            for index in range(24)
        }
        with tempfile.TemporaryDirectory() as directory:
            target = Path(directory) / "opamroot/repo/default.new"
            with patch("nonpos_opam_plan_v2.time.sleep") as pause:
                count = prepare_repository_directories(expected, target)
            self.assertEqual(count, 49)
            self.assertEqual(pause.call_count, 6)
            self.assertTrue(all(path.is_dir() for path in target.rglob("*")))
            self.assertTrue((target / "packages/p23/p23.1").is_dir())
            with self.assertRaises(FileExistsError):
                prepare_repository_directories(expected, target)
            with self.assertRaises(ValueError):
                prepare_repository_directories(
                    {"../escape/opam": {}}, target.parent / "bad"
                )
            self.assertFalse((target.parent / "bad").exists())

    def test_actual_opam_initializes_from_owned_loopback_repository(self):
        from nonpos_opam_plan_v2 import (
            configure_repository_transport,
            plan_environment,
            prepare_repository_directories,
            repository_server,
        )

        tools = json.loads(
            (
                Path(__file__).resolve().parents[2] / "nonpos-opam-plan-inputs-v2.json"
            ).read_text()
        )["tools"]
        bootstrap = json.loads(
            Path(
                "/var/tmp/behavior-ir-core036-v2/w001/"
                "nonpos-opam-bootstrap/a0274/result.json"
            ).read_text()
        )
        opam = Path(bootstrap["executable"])
        self.assertEqual(
            hashlib.sha256(opam.read_bytes()).hexdigest(),
            bootstrap["executable_sha256"],
        )
        with tempfile.TemporaryDirectory() as directory:
            scratch = Path(directory)
            source = scratch / "source"
            source.mkdir()
            (scratch / "tmp").mkdir()
            raw = b'opam-version: "2.0"\n'
            (source / "repo").write_bytes(raw)
            (source / "metadata").mkdir()
            (source / "metadata/probe").write_bytes(b"exact-index-payload")
            env = plan_environment(tools, scratch, os.environ)
            target = scratch / "opamroot/repo/default.new"
            self.assertEqual(
                prepare_repository_directories(
                    {"repo": {}, "metadata/probe": {}}, target
                ),
                1,
            )
            identity = (target / "metadata").stat().st_ino
            with repository_server(tools, source, scratch, env) as address:
                opam_address, _ = configure_repository_transport(
                    tools, scratch, address, env
                )
                initialized = subprocess.run(
                    [
                        str(opam),
                        "init",
                        "--bare",
                        "--bypass-checks",
                        "--require-checksums",
                        "--no-setup",
                        "--disable-sandboxing",
                        "--no-opamrc",
                        "--yes",
                        "default",
                        opam_address,
                    ],
                    cwd=scratch,
                    env=env,
                    stdout=subprocess.PIPE,
                    stderr=subprocess.PIPE,
                    timeout=20,
                    check=False,
                )
                self.assertEqual(initialized.returncode, 0, initialized.stderr.decode())
                self.assertEqual(
                    (scratch / "opamroot/repo/default/repo").read_bytes(), raw
                )
                delivered = scratch / "opamroot/repo/default/metadata"
                self.assertEqual(delivered.stat().st_ino, identity)
                self.assertEqual(
                    (delivered / "probe").read_bytes(), b"exact-index-payload"
                )

    def test_owned_loopback_repository_copies_exact_bytes_and_closes(self):
        from nonpos_opam_plan_v2 import repository_server

        tools = json.loads(
            (
                Path(__file__).resolve().parents[2] / "nonpos-opam-plan-inputs-v2.json"
            ).read_text()
        )["tools"]
        with tempfile.TemporaryDirectory() as directory:
            scratch = Path(directory)
            source, target = scratch / "source", scratch / "target"
            source.mkdir()
            target.mkdir()
            (source / "repo").write_bytes(b'opam-version: "2.0"\n')
            with repository_server(tools, source, scratch, {}) as address:
                copied = subprocess.run(
                    [tools["rsync"]["path"], "-r", address + "/", str(target)],
                    stdout=subprocess.PIPE,
                    stderr=subprocess.PIPE,
                    timeout=10,
                    check=False,
                )
                self.assertEqual(copied.returncode, 0, copied.stderr.decode())
                self.assertEqual(
                    (target / "repo").read_bytes(), (source / "repo").read_bytes()
                )
                port = int(address.split(":")[2].split("/")[0])
            with self.assertRaises(OSError):
                socket.create_connection(("127.0.0.1", port), timeout=0.2)

    def test_paced_index_preserves_exact_git_blobs(self):
        from nonpos_opam_plan_v2 import unpack_index

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            archive = root / "index.tar"
            raw = b'opam-version: "2.0"\n'
            with tarfile.open(archive, "w") as writer:
                member = tarfile.TarInfo("repo")
                member.size = len(raw)
                writer.addfile(member, io.BytesIO(raw))
            blob = hashlib.sha1(
                b"blob " + str(len(raw)).encode() + b"\0" + raw
            ).hexdigest()
            expected = {"repo": {"mode": "100644", "blob": blob}}
            self.assertEqual(
                unpack_index(archive, root / "output", expected)["files"], 1
            )
            self.assertEqual((root / "output/repo").read_bytes(), raw)
            for changed in (
                {"repo": {"mode": "100644", "blob": "0" * 40}},
                {**expected, "missing": {"mode": "100644", "blob": blob}},
            ):
                with self.assertRaises(ValueError):
                    unpack_index(archive, root / ("bad" + str(len(changed))), changed)

    def test_index_rejects_paths_outside_its_target(self):
        from nonpos_opam_plan_v2 import unpack_index

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            archive = root / "index.tar"
            with tarfile.open(archive, "w") as writer:
                member = tarfile.TarInfo("../outside")
                writer.addfile(member, io.BytesIO())
            with self.assertRaises(ValueError):
                unpack_index(archive, root / "output", {})
            self.assertFalse((root / "outside").exists())

    def test_repository_is_the_exact_captured_commit(self):
        from nonpos_opam_plan_v2 import repository_commit

        captured = "1" * 40
        self.assertEqual(repository_commit(captured, captured), captured)
        for candidate in ("master", "HEAD", "1" * 7, "2" * 40):
            with self.assertRaises(ValueError):
                repository_commit(candidate, captured)

    def test_plan_environment_has_only_pinned_path_and_private_opam_state(self):
        from nonpos_opam_plan_v2 import plan_environment

        scratch = Path("/private/tmp/plan")
        tools = {
            "git": {"path": "/nix/store/pinned-git/bin/git"},
            "cc": {"path": "/nix/store/pinned-cc/bin/cc"},
        }
        env = plan_environment(
            tools,
            scratch,
            {
                "PATH": "/tmp/attacker",
                "OPAMROOT": "/outside",
                "OPAMSWITCH": "caller",
                "OPAMNOCHECKSUMS": "true",
                "GIT_CONFIG_PARAMETERS": "caller",
                "LD_PRELOAD": "/outside.so",
            },
        )
        self.assertEqual(env["OPAMROOT"], str(scratch / "opamroot"))
        self.assertEqual(env["OPAMJOBS"], "1")
        self.assertEqual(env["MAKEFLAGS"], "-j1")
        self.assertNotIn("/tmp/attacker", env["PATH"])
        self.assertNotIn("OPAMSWITCH", env)
        self.assertNotIn("OPAMNOCHECKSUMS", env)
        self.assertNotIn("GIT_CONFIG_PARAMETERS", env)
        self.assertNotIn("LD_PRELOAD", env)
