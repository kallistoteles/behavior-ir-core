"""Recover exact frozen decisions and account for their byte-level content."""
from pathlib import Path
import collections,gzip,hashlib,json
ROOT=Path(__file__).resolve().parents[2]
OUT=Path(__file__).resolve().parent
portable=ROOT/'evidence/portable';index=json.loads((portable/'index.json').read_text())
def encoded(v):return json.dumps(v,ensure_ascii=False,sort_keys=True,separators=(',',':')).encode()
rows=[]
for n in [128,512,2048,8192]:
 ref=index['objects'][f'population-{n}'];blob=gzip.decompress((portable/ref['path']).read_bytes());assert 'sha256:'+hashlib.sha256(blob).hexdigest()==ref['sha256'];doc=json.loads(blob);r=doc['records'][0];raw=encoded(r)
 counts=collections.Counter(x['phase'] for x in r['trace']);trace_sizes={phase:sum(len(encoded(x))+1 for x in r['trace'] if x['phase']==phase) for phase in counts}
 row={'n':n,'record_bytes':len(raw),'record_sha256':'sha256:'+hashlib.sha256(raw).hexdigest(),'top_level_value_bytes':{k:len(encoded(v)) for k,v in r.items()},'facts_value_bytes':{k:len(encoded(v)) for k,v in r['facts'].items()},'trace_phase_counts':dict(counts),'trace_phase_element_bytes_including_comma':trace_sizes,'fact_counts':{'fields':len(r['facts']['fields']),'query_members':sum(len(x['members']) for x in r['facts']['queries']),'universe_entities':sum(len(x['members']) for x in r['facts']['universe'])},'one_constraint_example':next(x for x in r['trace'] if x['phase']=='constraint_post'),'create_lifecycle':r['lifecycle']}
 if n==8192:
  assert len(raw)>3_000_000 and counts['constraint_post']==8193
  Path('/data/core028/core031-single-create-profile/frozen-first.record.json').write_bytes(raw)
  row['universe_shape']={k:type(v).__name__ for k,v in r['facts']['universe'][0].items()}
 rows.append(row)
(OUT/'record-breakdown.json').write_text(json.dumps({'source':'Exact first decision in each retained population case; value sizes exclude parent keys/separators; full record bytes exact.','rows':rows},indent=2)+'\n')
print(json.dumps([{k:x[k] for k in ['n','record_bytes','trace_phase_counts','fact_counts']} for x in rows],indent=2))
