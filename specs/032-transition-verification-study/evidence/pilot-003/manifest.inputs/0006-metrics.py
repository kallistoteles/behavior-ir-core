"""Summaries of measured samples; absent work remains unknown."""
import math
import statistics
class MetricsError(ValueError):pass

def summarize(rows):
    result={}
    for field in ('whole_seconds','producer_seconds','consumer_seconds','bridge_seconds'):
        values=[r.get(field) for r in rows];known=[]
        for value in values:
            if value is None:continue
            if type(value) not in (int,float) or not math.isfinite(value) or value<0:raise MetricsError('invalid numeric metric')
            known.append(value)
        result[field]={'median':statistics.median(known) if known else None,'minimum':min(known) if known else None,'maximum':max(known) if known else None,'samples':len(known),'unknown':len(values)-len(known),'reason':None if len(known)==len(values) and known else 'missing/unmeasured samples; no substitution by zero'}
    return result

def succinctness(*,folding_independent,bridge_independent):
    return folding_independent is True and bridge_independent is True
