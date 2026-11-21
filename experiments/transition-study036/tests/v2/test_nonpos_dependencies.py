"""A dependency plan cannot silently change the established compiler."""

import copy
import unittest


class NonposDependencyTests(unittest.TestCase):
    def fixture(self):
        return {
            "opam-version": "2.3.0",
            "switch": "core036",
            "solution": [
                {"install": {"name": name, "version": "1"}}
                for name in ["logs", "zarith", "conf-gmp"]
            ],
        }

    def test_required_roots_and_transitive_packages_are_retained(self):
        from nonpos_dependencies_v2 import dependency_solution

        rows = dependency_solution(self.fixture(), {"logs", "zarith"})
        self.assertEqual(rows, [("conf-gmp", "1"), ("logs", "1"), ("zarith", "1")])

    def test_missing_duplicate_or_compiler_changing_actions_are_rejected(self):
        from nonpos_dependencies_v2 import dependency_solution

        for mutate in (
            lambda p: p["solution"].pop(0),
            lambda p: p["solution"].append(copy.deepcopy(p["solution"][0])),
            lambda p: p["solution"].append(
                {"install": {"name": "ocaml", "version": "5.4.0"}}
            ),
            lambda p: p["solution"].append(
                {"remove": {"name": "ocaml", "version": "5.3.0"}}
            ),
        ):
            plan = self.fixture()
            mutate(plan)
            with self.assertRaises(ValueError):
                dependency_solution(plan, {"logs", "zarith"})

    def test_plan_scope_and_bound_are_not_caller_selected(self):
        from nonpos_dependencies_v2 import dependency_solution

        for fields in (
            {"switch": "caller"},
            {"opam-version": "latest"},
            {"solution": []},
            {
                "solution": [
                    {"install": {"name": "p" + str(i), "version": "1"}}
                    for i in range(129)
                ]
            },
        ):
            with self.assertRaises(ValueError):
                dependency_solution({**self.fixture(), **fields}, {"logs", "zarith"})
