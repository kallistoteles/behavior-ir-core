"""Fail-closed completion assessment. A no-go disposition cannot replace missing work."""
BOOLEAN_REQUIREMENTS=('native_complete','exactness','proof_small_verified','bridge_matched','proof_integrity','negative_controls','compatibility','recovery','portable','dossier')
COUNT_REQUIREMENTS=('first_use_repetitions','reuse_repetitions')
def assess_claims(claims):
    blocked=[key for key in BOOLEAN_REQUIREMENTS if claims.get(key) is not True]
    blocked.extend(key for key in COUNT_REQUIREMENTS if type(claims.get(key)) is not int or claims[key]<3)
    return {'format':'core032.assessment.v1','complete':not blocked,'blocking_obligations':blocked,'claims':claims}
