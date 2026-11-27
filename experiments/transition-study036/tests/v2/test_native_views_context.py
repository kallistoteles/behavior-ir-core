"""One real source context must contain full Views and canonical projection."""

import unittest

from extract import extraction_roots


class NativeViewsContextTests(unittest.TestCase):
    def test_full_views_and_store_projection_are_selected_together(self):
        self.assertEqual(
            extraction_roots("views-canonical"),
            ["crate::views", "crate::reference::state_facts"],
        )

    def test_unselected_or_partial_aliases_do_not_define_this_context(self):
        for scope in [
            "views-canonical-row",
            "views_canonical",
            "views-canonical*",
            None,
        ]:
            with self.subTest(scope=scope), self.assertRaises(ValueError):
                extraction_roots(scope)
