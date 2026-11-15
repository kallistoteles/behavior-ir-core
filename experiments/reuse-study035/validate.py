"""Independent integrity/coverage checks. Actual replay is a separate bounded role."""
from pathlib import Path
from artifact_io import verify_archive
ROOTS={'finish_frame','view_update_exact','unaffected_result_stable','finish_exact','observation_reconstruct_exact','finish_preserves_safety','ground_advance','refusal_no_promotion','stale_no_promotion','uncertain_no_authority','semantic_work_bound','fallback_exact'}
ASSESSMENT_FIELDS={'format','candidate','product_adoption','requirements','success_criteria','controls','proof_roots','cells','native_correspondence','semantic','mathematical','cost','gates','findings','summary','input_manifest','prepared_manifest','archive','evidence_refs','correspondence_refs','limits','closing','quality'}
def validate_assessment_shape(assessment):
 a=assessment
 if not isinstance(a,dict)or set(a)-ASSESSMENT_FIELDS or a.get('format')!='core035.assessment.v1':raise ValueError('AssessmentFields')
 if a.get('candidate')not in ['supported_for_fragment','conditional','rejected','undetermined']or a.get('product_adoption')!='unactivated':raise ValueError('AssessmentVerdict')
 if a.get('native_correspondence')not in ['conditional','unestablished']:raise ValueError('UnprovedNativeClaim')
 inventory={'requirements':{f'FR-{i:03}'for i in range(1,22)},'success_criteria':{f'SC-{i:03}'for i in range(1,9)},'controls':{f'C{i:02}'for i in range(1,21)},'proof_roots':ROOTS,'cells':{f'growth-D{i}'for i in range(1,6)}}
 statuses={'met','not_met','partial','not_evaluated','checked_for_fragment','completed','equal','targeted_rejection','not_run','resource_stopped','failed','unestablished','unsupported'}
 for field,expected in inventory.items():
  rows=a.get(field)
  if not isinstance(rows,dict)or set(rows)!=expected:raise ValueError('IncompleteInventory:'+field)
  for row in rows.values():
   if not isinstance(row,dict)or row.get('status')not in statuses:raise ValueError('Disposition')
   if row['status']not in ['met','completed','equal','checked_for_fragment','targeted_rejection']and not row.get('reason'):raise ValueError('MissingNegativeReason')
 return True

def validate_closed_index(root,index):
 root=Path(root);verify_archive(root,index)
 indexed={r['path']for r in index['files']};actual=set()
 for p in root.rglob('*'):
  if p.is_symlink():raise ValueError('ArchiveSymlink')
  if p.is_file()and p.relative_to(root).as_posix()!='closed-artifacts.json':actual.add(p.relative_to(root).as_posix())
 if actual!=indexed:raise ValueError('IncompleteOrLateArchiveIndex')
 return True
