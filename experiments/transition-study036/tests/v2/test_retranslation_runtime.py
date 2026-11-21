"""A lower GC overhead requires the actual closed same-input memory failure."""

import copy
import unittest


class RetranslationRuntimeTests(unittest.TestCase):
    def fixture(self):
        subject = {"sha256": "a" * 64}
        cp = dict(
            stage_outcome="resource_stopped",
            source_validation_error=None,
            source_subject_ref=subject,
            outcome={"operational": "closed"},
        )
        receipt = dict(
            source_subject_ref=subject,
            stop_reason="HostAvailableFloor",
            exit_code=-9,
            tree_empty=True,
            group_empty=True,
            tree_samples=[
                dict(
                    host_available_bytes=4274249728,
                    observed_descendant_rss_bytes=5871529984,
                )
            ],
        )
        config = dict(
            format="core036.retranslation-inputs.v2",
            extraction_ref={"sha256": "b" * 64},
            translator_ref={"sha256": "c" * 64},
        )
        return cp, receipt, config, copy.deepcopy(config)

    def test_actual_same_input_memory_failure_authorizes_only_fixed_gc_profile(self):
        from retranslation_runtime_v2 import validate_runtime_failure

        self.assertEqual(validate_runtime_failure(*self.fixture()), "d=1,o=10,v=0x400")

    def test_changed_inputs_nonmemory_failures_unclosed_and_false_samples_rejected(
        self,
    ):
        from retranslation_runtime_v2 import validate_runtime_failure

        changes = [
            lambda c, r, x, f: c.update(stage_outcome="succeeded"),
            lambda c, r, x, f: c.update(source_validation_error="changed"),
            lambda c, r, x, f: r.update(stop_reason="WallLimit"),
            lambda c, r, x, f: r.update(tree_empty=False),
            lambda c, r, x, f: r.update(group_empty=False),
            lambda c, r, x, f: r.update(source_subject_ref={}),
            lambda c, r, x, f: x.update(translator_ref={}),
            lambda c, r, x, f: r.update(tree_samples=[]),
            lambda c, r, x, f: r["tree_samples"][0].update(host_available_bytes=False),
            lambda c, r, x, f: r["tree_samples"][0].update(
                host_available_bytes=10 * 1024**3
            ),
        ]
        for change in changes:
            args = self.fixture()
            change(*args)
            with self.assertRaises(ValueError):
                validate_runtime_failure(*args)
