"""Scoped source probes must preserve the existing, explicit boundaries."""

import copy
import json
from pathlib import Path
import unittest


class DiagnosticExtractionTests(unittest.TestCase):
    def contracts(self):
        root = Path(__file__).resolve().parents[4]
        base = json.loads(
            (
                root
                / "specs/036-core-transition-feasibility/inputs/v2/native-codec-contract-002.json"
            ).read_text()
        )
        candidate = copy.deepcopy(base)
        candidate["extraction_boundary_patterns"].append("crate::run_v2::execute_cli")
        candidate["diagnostic_opaque_boundaries"] = [
            dict(name="crate::run_v2::execute_cli", status="unestablished")
        ]
        return base, candidate

    def test_real_base_boundaries_are_preserved_in_the_diagnostic_delta(self):
        from extract import validate_diagnostic_boundaries

        base, candidate = self.contracts()
        validate_diagnostic_boundaries(candidate, base, "entry-errors")

    def test_dropping_boundaries_or_claiming_whole_worker_coverage_is_rejected(self):
        from extract import validate_diagnostic_boundaries

        base, candidate = self.contracts()
        dropped = copy.deepcopy(candidate)
        dropped["extraction_boundary_patterns"] = [
            "crate::serialization",
            "crate::run_v2::execute_cli",
        ]
        claimed = copy.deepcopy(candidate)
        claimed["native_refinement_claimed"] = True
        unrecorded = copy.deepcopy(candidate)
        unrecorded["diagnostic_opaque_boundaries"] = []
        for invalid, scope in [
            (dropped, "entry-errors"),
            (claimed, "entry-errors"),
            (unrecorded, "entry-errors"),
            (candidate, "worker-entrypoints"),
        ]:
            with self.subTest(scope=scope), self.assertRaises(ValueError):
                validate_diagnostic_boundaries(invalid, base, scope)
