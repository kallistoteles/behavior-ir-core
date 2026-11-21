"""One observed bounded evidence reservation; no open-ended capacity changes."""

import unittest


class BoundedEvidenceReservationTests(unittest.TestCase):
    def test_exact_128mib_successor_and_no_further_or_skipped_step(self):
        from capacity_profile_v2 import validate_capacity_step_v2

        gib = 1024**3
        bounded = 7 * gib + 128 * 1024**2
        validate_capacity_step_v2(4 * gib, 6 * gib)
        validate_capacity_step_v2(6 * gib, 7 * gib)
        validate_capacity_step_v2(7 * gib, bounded)
        for previous, following in (
            (7 * gib, 8 * gib),
            (6 * gib, bounded),
            (bounded, 8 * gib),
            (bounded, bounded + 1),
        ):
            with self.assertRaisesRegex(ValueError, "V2EvidenceCapacityDeclaredStep"):
                validate_capacity_step_v2(previous, following)

    def test_closed455_and456_volume_reservations_leave_original_stop_floor(self):
        from capacity_profile_v2 import check_capacity_headroom_v2

        bounded = 7 * 1024**3 + 128 * 1024**2
        for free, used in ((4524691456, 7501008708), (4516139008, 7508575080)):
            check_capacity_headroom_v2(free, used, bounded, 4 * 1024**3)
            with self.assertRaisesRegex(ValueError, "V2EvidenceCapacityHeadroom"):
                check_capacity_headroom_v2(free, used, 8 * 1024**3, 4 * 1024**3)
