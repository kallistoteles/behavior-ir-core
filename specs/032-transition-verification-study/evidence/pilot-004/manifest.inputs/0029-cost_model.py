"""Read retained paired samples; separate implementation, oracle and transport cost."""
import collections
import json
from pathlib import Path
import statistics
from campaign import _read
from early_campaign import write_new

def analyze(manifest_path,output):
    manifest_path=Path(manifest_path);base=manifest_path.parent;manifest=_read(manifest_path);native=_read(base/'native/index.json');proofs=_read(base/'proofs/index.json')
    grouped=collections.defaultdict(list)
    for row in native['records']:grouped[(row['case_id'],row['candidate'],row['mode'])].append(row)
    summary=[]
    for (case,candidate,profile),rows in sorted(grouped.items()):
        good=[r for r in rows if r['outcome']=='Succeeded'];walls=[r['whole_seconds'] for r in good]
        implementation=[sum(v['wall_seconds'] for v in r['phases'].values()) for r in good]
        metrics=[r['metrics'] for r in good if r.get('metrics')]
        expanded=[v['expanded_bytes'] for v in metrics if 'expanded_bytes' in v]
        encoded=[v['compact_bytes']+v['support_bytes'] for v in metrics if profile=='study' and 'compact_bytes' in v]
        summary.append({'case_id':case,'candidate':candidate,'profile':profile,'successes':len(good),'outcomes':dict(collections.Counter(r['outcome'] for r in rows)),
            'whole_median_seconds':statistics.median(walls) if walls else None,'whole_range_seconds':[min(walls),max(walls)] if walls else None,
            'implementation_chain_median_seconds':statistics.median(implementation) if implementation else None,
            'expanded_bytes_median':statistics.median(expanded) if expanded else None,'study_payload_bytes_median':statistics.median(encoded) if encoded else None,
            'unknown_reason':'No successful samples or metric not collected for this strategy' if not walls or not expanded else None})
    result={'format':'core032.cost-model.v1','native_groups':summary,'native_outcomes':dict(collections.Counter(r['outcome'] for r in native['records'])),'proof_capacity':proofs['records'],
        'metric_scope':{'whole':'collector contiguous case wall includes required processes, parsing, exactness-oracle comparison and verified retention; retention also separately recorded','implementation_chain':'sum of actual nested process durations within each sample, then median; never sum phase medians','bytes':'canonical observation expansion and actual shared-DAG payload where instrumented; transfer containers/extra diagnostic archives separate','allocations':'only opt-in experimental JSON Vec/hash sites; total Core/Nova allocations/copies/parses unknown'},
        'limitations':['three primary repetitions do not establish latency distributions','capacity controls have one repetition outside the primary small point','Core bridge recomputes the full exact prefix; no end-to-end succinct Core claim','different Core031 module/workload; historical medians are not a paired speedup baseline']}
    write_new(output,result);return result

def write_markdown(result,path):
    lines=['# Measured cost model','','All numbers come from retained samples. The full JSON summary is `cost-model.json`. Failed and exhausted samples remain in the campaign index.','','| Case | Strategy | Profile | Successful reps | Whole median (s) | Implementation phases (s) | Expanded bytes | DAG payload bytes |','|---|---|---|---:|---:|---:|---:|---:|']
    def display(v):return 'unknown' if v is None else f'{v:.3f}' if isinstance(v,float) else str(v)
    for row in result['native_groups']:
        lines.append('| '+' | '.join([row['case_id'],row['candidate'],row['profile'],str(row['successes']),display(row['whole_median_seconds']),display(row['implementation_chain_median_seconds']),display(row['expanded_bytes_median']),display(row['study_payload_bytes_median'])])+' |')
    lines+=['','## Interpretation','','The reference uses the forced-full semantic-validation path. A retains derived views and predicts closed-fragment outcomes, but checks full J and uses Core for complete normative evidence. B independently reconstructs the anchor once per whole-history claim and recomputes every Core step; producer and checker run in separate processes. These are conservative measured implementations, not lower bounds on all possible IVM or witness algorithms.','','Existing output profiles must emit their canonical evidence bytes: output work is at least Ω(B). Full J scans and repeated prefix replay (retained in superseded campaign001) are implementation overhead, rather than mathematical necessities. The experimental DAG changes transport representation and preserves complete expansion; flat arrays and full Core evidence construction still impose substantial work. It is not an authenticated query-completeness protocol.','','Nova setup, parameter loading/validation, folding, verification and the full Core bridge are separate recorded phases. Recursive proof verification can be history independent at fixed circuit capacity while combined Core verification remains dependent on the replayed prefix. Compression was not implemented.','','Primary wall times are medians of contiguous whole samples. Implementation-phase totals are summed inside each individual sample before taking the median. Oracle comparison and archive retention are reported separately and must not be described as library execution speed. Unmeasured allocation/copy/parse totals remain unknown.','','The initial debug pilot and early runs are not the final optimized comparison. Early001 controller-affinity nonconformance is explicitly annotated and excluded from binding performance conclusions. No published Core031 evidence was rewritten.','']
    Path(path).write_text('\n'.join(lines))
