"""Fixed closed unselected compilation caches for bounded overflow recovery."""

from proof_cache_retention_v2 import RECOVERY_PARENTS as PARENTS
from proof_cache_retention_v2 import _targets, _cache_inventory, _run_batch
from proof_cache_retention_v2 import disposable_root as disposable_root


def targets(private, attempt):
    return _targets(private, attempt, PARENTS)


def cache_inventory(private):
    return _cache_inventory(private, PARENTS)


def run_retention(refs, reference, declaration, out):
    return _run_batch(refs, reference, declaration, out, parents=PARENTS)
