"""Research supervisor. Authority comes from checked evidence, not CLI exit0."""
from recorder import Ledger,run

def permitted_wall(ledgers,now_ns,boot_id,process_cap=900):
    if not ledgers or not 0<process_cap<=900:raise ValueError('InvalidBudgetHierarchy')
    return min(process_cap,*(ledger.remaining_ns(now_ns,boot_id)/10**9 for ledger in ledgers))
