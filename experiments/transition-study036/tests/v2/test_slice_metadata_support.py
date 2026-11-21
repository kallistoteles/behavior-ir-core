"""Parse admission cannot promote syntax checks into semantic proofs."""

import copy
import hashlib
import unittest
from slice_metadata_source_v2 import validate_source_parse


class SliceMetadataParseTests(unittest.TestCase):
    def fixture(self):
        subject = {"sha256": "a" * 64}
        changes = {"real.ml": b"let x = 1"}
        cp = dict(
            stage_outcome="succeeded",
            source_validation_error=None,
            outcome={"operational": "closed"},
            source_subject_ref=subject,
        )
        result = dict(
            format="core036.slice-metadata-source-parse-result.v2",
            source_subject_ref=subject,
            source_syntax_checked=True,
            original_sources_unchanged=True,
            source_typecheck="not_run",
            translator_build="not_run",
            native_proof="unestablished",
            feature_complete=False,
            prospective_sources={
                name: dict(bytes=len(raw), sha256=hashlib.sha256(raw).hexdigest())
                for name, raw in changes.items()
            },
            commands=[dict(label="real.ml", exit_code=0, timed_out=False)],
        )
        return cp, result, changes

    def test_closed_parse_is_syntax_only(self):
        validate_source_parse(*self.fixture())

    def test_changed_failed_incomplete_or_promoted_parse_is_rejected(self):
        for mutate in [
            lambda c, r, s: c.update(stage_outcome="failed"),
            lambda c, r, s: c.update(source_validation_error="changed"),
            lambda c, r, s: r.update(source_subject_ref={}),
            lambda c, r, s: r.update(native_proof="proved"),
            lambda c, r, s: r.update(feature_complete=True),
            lambda c, r, s: r.update(source_typecheck="passed"),
            lambda c, r, s: r.update(translator_build="passed"),
            lambda c, r, s: r["commands"].clear(),
            lambda c, r, s: r["commands"][0].update(exit_code=False),
            lambda c, r, s: r["commands"][0].update(timed_out=True),
            lambda c, r, s: s.update({"real.ml": b"let x = 2"}),
        ]:
            values = copy.deepcopy(self.fixture())
            mutate(*values)
            with self.assertRaises(ValueError):
                validate_source_parse(*values)


class MetadataWitnessTests(unittest.TestCase):
    def test_reborrow_metadata_hint_is_not_an_executable_metadata_read(self):
        from slice_metadata_probe_v2 import metadata_witnesses

        place = {"kind": {"Projection": [{"kind": {"Local": 1}}, "PtrMetadata"]}}
        hint = {"Ref": {"place": {}, "ptr_metadata": {"Read": place}}}
        self.assertEqual(metadata_witnesses(hint), [])
        executable = {"Use": {"Copy": [place, False]}}
        self.assertEqual(
            metadata_witnesses(executable), ["/Use/Copy/0/kind/Projection/1"]
        )


class MetadataRedDiagnosticTests(unittest.TestCase):
    def test_actual_projection_frames_are_accepted_and_unrelated_failures_reject(self):
        from slice_metadata_probe_v2 import FUNCTIONS, validate_metadata_red

        frames = [
            "Inconsistent projection: Generated_Expressions.PtrMetadata "
            "Values.VSharedBorrow Generated_Types.RShared core036_slice_metadata::"
            + name
            for name in FUNCTIONS
        ]
        validate_metadata_red("\n".join(frames))
        for log in (
            "pointer metadata",
            "failed to load libz.so.1",
            "\n".join(frames[:-1]),
        ):
            with self.assertRaises(ValueError):
                validate_metadata_red(log)
