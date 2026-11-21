"""Fixed foundation scope; US1 native-proof and whole-Q tests are separate."""

import sys
import unittest
from pathlib import Path

MODULES = (
    "test_artifact_io",
    "test_bootstrap",
    "test_build_inputs",
    "test_campaign",
    "test_campaign_integration",
    "test_execution_source",
    "test_footprints",
    "test_gates",
    "test_journal_records",
    "test_original_safety_binding",
    "test_owned_cleanup",
    "test_preservation",
    "test_profile_extensions",
    "test_recorder",
    "test_recorder_cadence",
    "test_recorder_nested",
    "test_recorder_source",
    "test_records",
    "test_sources",
    "test_storage_observer",
    "test_sdk_dedup",
)


def main():
    sys.path.insert(0, str(Path(__file__).resolve().parent / "tests/v2"))
    suite = unittest.defaultTestLoader.loadTestsFromNames(MODULES)
    result = unittest.TextTestRunner(verbosity=2).run(suite)
    return 0 if result.wasSuccessful() else 1


if __name__ == "__main__":
    raise SystemExit(main())
