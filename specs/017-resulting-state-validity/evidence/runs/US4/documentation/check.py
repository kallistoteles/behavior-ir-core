#!/usr/bin/env python3
"""Check T058 documentation and the sole explicit historical-doc exception."""
import hashlib
import json
import re
import subprocess
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import unquote

ROOT = Path(__file__).resolve().parents[6]
OUT = Path(__file__).resolve().parent
DOCS = (
    "docs/versioning.md",
    "docs/invocation.md",
    "docs/persistence.md",
    "tests/fixtures/README.md",
)
EXCEPTION = "tests/fixtures/README.md"
ORIGINAL_DOC_SHA = "d4d085c1eaafb7512733ff758d08b0cffac5e78227eda886a58e5aa8b6e12ae5"
ARCHIVE_SHA = "22ac55b27f02f03d99e09a8f28609600f643f34b85681297bb7375383725e771"
COMPAT_SHA = "92ea0a80e7c88443c51b3e996e964521d5a893118b4341f5baaa7e71b274206e"
SIGNED_SHA = "ded9caf8bf170af37079cd223bceb8683a5a5c8a6b7f1d7bf83805dad933d67c"


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def checked_entries(entries, base):
    for path, expected in entries:
        actual = digest(base / path)
        assert actual == expected, (str(base / path), actual, expected)


def main():
    started = datetime.now(timezone.utc).isoformat()
    before = {path: digest(ROOT / path) for path in DOCS}
    archive_path = ROOT / "tests/fixtures/resulting-state-validity/archive-manifest.json"
    assert digest(archive_path) == ARCHIVE_SHA
    archive = json.loads(archive_path.read_text())
    fixtures = archive["historical_fixtures"]
    assert len(fixtures) == 546
    old_doc = next(entry for entry in fixtures if entry["path"] == EXCEPTION)
    assert old_doc["sha256"] == ORIGINAL_DOC_SHA
    assert old_doc["bytes"] == 4871
    assert old_doc["categories"] == ["supporting-fixture"]
    original_bytes = subprocess.run(
        ["git", "cat-file", "blob", old_doc["baseline_git_blob"]],
        cwd=ROOT, check=True, capture_output=True,
    ).stdout
    assert len(original_bytes) == old_doc["bytes"]
    assert hashlib.sha256(original_bytes).hexdigest() == ORIGINAL_DOC_SHA
    assert before[EXCEPTION] != ORIGINAL_DOC_SHA
    unchanged = [entry for entry in fixtures if entry["path"] != EXCEPTION]
    assert len(unchanged) == 545
    checked_entries(((entry["path"], entry["sha256"]) for entry in unchanged), ROOT)
    captures = archive["captured_artifacts"]
    assert len(captures) == 42
    checked_entries(((entry["path"], entry["sha256"]) for entry in captures), ROOT)

    compat_dir = ROOT / "tests/fixtures/resulting-state-validity/compatibility-archive"
    assert digest(compat_dir / "manifest.json") == COMPAT_SHA
    compat = json.loads((compat_dir / "manifest.json").read_text())
    assert len(compat["cases"]) == 106
    checked_entries(
        ((case["record_path"], case["record_sha256"]) for case in compat["cases"]),
        compat_dir,
    )
    signed_dir = ROOT / "specs/017-resulting-state-validity/evidence/runs/US4/signed-archive08-baseline"
    assert digest(signed_dir / "manifest.json") == SIGNED_SHA
    signed = json.loads((signed_dir / "manifest.json").read_text())
    checked_entries(
        ((path, entry["sha256"]) for path, entry in signed["artifacts"].items()),
        signed_dir,
    )

    checked_docs = [ROOT / path for path in DOCS] + [OUT / "summary.md"]
    links = []
    for document in checked_docs:
        contents = document.read_text()
        assert contents.endswith("\n")
        assert not any(line != line.rstrip() for line in contents.splitlines())
        for match in re.finditer(r"\[[^\]]+\]\(([^)]+)\)", contents):
            target = match.group(1).strip().split("#", 1)[0]
            if not target or re.match(r"[a-zA-Z][a-zA-Z0-9+.-]*:", target):
                continue
            target = unquote(target.strip("<>"))
            resolved = document.parent / target
            assert resolved.exists(), (str(document), target)
            links.append({"document": str(document.relative_to(ROOT)), "target": target})
    command = ["git", "diff", "--check", "--", *DOCS]
    diff = subprocess.run(command, cwd=ROOT, capture_output=True, text=True)
    assert diff.returncode == 0, diff.stdout + diff.stderr
    after = {path: digest(ROOT / path) for path in DOCS}
    assert before == after
    assert digest(archive_path) == ARCHIVE_SHA
    result = {
        "format": "behavior.017.documentation_integrity.v1",
        "started_at_utc": started,
        "finished_at_utc": datetime.now(timezone.utc).isoformat(),
        "documentation_sha256": after,
        "documentation_unchanged_during_check": True,
        "authorized_historical_document_exception": {
            "path": EXCEPTION,
            "authority": "T058 assigned scope and parent instruction; navigation documentation only",
            "original_sha256": ORIGINAL_DOC_SHA,
            "original_git_blob": old_doc["baseline_git_blob"],
            "updated_sha256": after[EXCEPTION],
            "original_documentation_bytes_checked": True,
            "original_manifest_unchanged": True,
            "not_a_semantic_fixture_exception": True,
        },
        "immutable_archive_manifest_sha256": ARCHIVE_SHA,
        "unchanged_original_fixture_entries": len(unchanged),
        "unchanged_original_captured_artifacts": len(captures),
        "unchanged_compatibility_records": len(compat["cases"]),
        "unchanged_signed_capture_artifacts": len(signed["artifacts"]),
        "compatibility_manifest_sha256": COMPAT_SHA,
        "signed_capture_manifest_sha256": SIGNED_SHA,
        "markdown_links": links,
        "markdown_links_passed": True,
        "diff_check": {"command": command, "exit_status": diff.returncode,
                       "stdout": diff.stdout, "stderr": diff.stderr},
        "runtime_tests_executed_in_this_documentation_check": False,
    }
    (OUT / "verification.json").write_text(json.dumps(result, indent=2, sort_keys=True) + "\n")
    print(json.dumps({
        "status": "PASS", "links": len(links), "original_fixture_entries": 545,
        "original_captures": 42, "compatibility_records": 106,
        "signed_capture_artifacts": len(signed["artifacts"]),
        "updated_readme_sha256": after[EXCEPTION], "runtime_tests": "not run",
    }, sort_keys=True))


if __name__ == "__main__":
    main()
