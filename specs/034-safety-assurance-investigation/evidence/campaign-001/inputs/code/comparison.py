"""A comparison never upgrades evidence or silently changes requested assurance."""
REQUESTED={'S1':['Q3','Q4','Q5','Q6'],'S2':['Q1'],'S3':['Q1','Q2','Q4','Q6'],'S4':['Q3','Q4','Q5'],'S5':['Q3','Q4','Q5'],'S6':['Q3','Q4','Q5'],'S7':['Q3','Q4','Q5'],'S8':['Q1','Q2','Q3','Q4','Q5','Q6']}

def validate_comparison(record):
 if record.get('format')!='core034.comparison.v1':raise ValueError('ComparisonFormat')
 rows=record.get('cells',[]);keys=[(x['arrangement'],x['situation']) for x in rows]
 if len(keys)!=24 or set(keys)!={(a,s) for a in ['A','B','C'] for s in REQUESTED}:raise ValueError('MissingOrRepeatedCell')
 for row in rows:
  if row['requested_claims']!=REQUESTED[row['situation']]:raise ValueError('ChangedRequestedClaim')
  if not set(row.get('established_claims',[]))<=set(row['requested_claims']):raise ValueError('ExtraClaim')
  for key in ['premises','gaps','required_work']:
   if not isinstance(row.get(key),list) or not row[key] or any(not isinstance(v,str) or not v.strip() for v in row[key]):raise ValueError('MissingScope:'+key)
  if row['arrangement']=='A' and row['situation']!='S2' and not any('explicit_trust' in p and 'all-writer' in p for p in row['premises']):raise ValueError('HiddenHostTrust')
  if row.get('storage')=='memory' and (row.get('finality')=='durable' or 'Q6' in row['established_claims']):raise ValueError('MemoryNotDurable')
  if row.get('disposition') not in {'established_under_premises','unestablished','unsupported','not_comparable','not_run'}:raise ValueError('CellDisposition')
  if row['established_claims'] and not row.get('evidence_refs'):raise ValueError('MissingPositiveEvidence')
  if not row['established_claims'] and not row.get('reason'):raise ValueError('MissingGapReason')
 return True

def validate_prior_scope(index):
 if index.get('format')!='core034.prior-study-index.v1':raise ValueError('PriorIndexFormat')
 ids=[]
 for row in index['entries']:
  ids.append(row['id'])
  if row.get('promoted_to_ld8') is not False:raise ValueError('OldSubjectPromoted')
  if not row.get('source_refs') or not row.get('subject') or not row.get('scope_limit'):raise ValueError('MissingPriorScope')
  if row.get('evidence_kind')=='missing_prefix_certificate' and (row.get('certificate_available') is not False or row.get('assurance')=='established_under_premises'):raise ValueError('MissingCertificatePassed')
  if row.get('certificate_available') is not False:raise ValueError('NoMatchingCompletedLD8Certificate')
 if len(ids)!=len(set(ids)):raise ValueError('RepeatedPriorEntry')
 return True
