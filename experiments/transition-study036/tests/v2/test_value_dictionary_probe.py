"""Component selection cannot hide changes to the original Value declarations."""

import unittest


class ValueDictionaryProbeTests(unittest.TestCase):
    def fixture(self):
        from value_dictionary_probe_v2 import OMITTED, ORIGINAL_NAMES, STOP

        chunks = ["module\nnamespace transition_study036\n"]
        for marker, name in OMITTED:
            chunks.append(marker + "\n-/\nimpl_def " + name + " := broken\n\n")
        for name in ORIGINAL_NAMES:
            chunks.append("/-- original -/\ndef " + name + " := originalBody\n\n")
        chunks.append(
            STOP + "\n-/\ndef acquire.require := true\nend transition_study036\n"
        )
        return "".join(chunks)

    def test_component_copies_originals_and_reports_exact_omitted_spans(self):
        from value_dictionary_probe_v2 import fragment, ORIGINAL_NAMES

        source = self.fixture()
        text, omitted = fragment(source)
        self.assertEqual(len(omitted), 2)
        self.assertNotIn("broken", text)
        for name in ORIGINAL_NAMES:
            self.assertIn("def " + name + " := originalBody", text)
        self.assertTrue(text.endswith("end transition_study036\n"))

    def test_missing_or_ambiguous_boundary_is_rejected(self):
        from value_dictionary_probe_v2 import fragment, STOP

        with self.assertRaises(ValueError):
            fragment(self.fixture().replace(STOP, "missing"))
        with self.assertRaises(ValueError):
            fragment(self.fixture() + STOP)

    def test_original_decl_change_is_rejected_even_when_names_survive(self):
        from value_dictionary_probe_v2 import conservation

        source = self.fixture()
        self.assertEqual(len(conservation(source, source)), 3)
        with self.assertRaises(ValueError):
            conservation(source, source.replace("originalBody", "wrongBody", 1))
