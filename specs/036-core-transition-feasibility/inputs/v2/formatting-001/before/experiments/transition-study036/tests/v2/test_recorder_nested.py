"""Isolated red/green target for nested ownership, independent of suite size."""
import unittest
import test_recorder as controls

class NestedOwnershipTests(unittest.TestCase):
    def test_nested_ownership(self):
        case=controls.RecorderV2Tests('test_nested_test_controllers_stay_inside_the_owned_parent_tree')
        case.test_nested_test_controllers_stay_inside_the_owned_parent_tree()
