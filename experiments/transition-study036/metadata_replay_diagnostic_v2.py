"""Read-only bounded profile of the fixed operational journal; no authority."""
import cProfile
import pstats
from campaign import WorkLedger
from pathlib import Path


def main():
    profile = cProfile.Profile()
    profile.enable()
    ledger = WorkLedger(Path(__file__).resolve().parents[2] / "specs/036-core-transition-feasibility/evidence/v2/w001", "w001")
    profile.disable()
    print("operational_only events", len(ledger.events), flush=True)
    pstats.Stats(profile).strip_dirs().sort_stats("cumulative").print_stats(24)


if __name__ == "__main__":
    main()
