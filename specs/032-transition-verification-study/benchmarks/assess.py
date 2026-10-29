"""Fail-closed completion assessment. A no-go disposition cannot replace missing work."""
BOOLEAN_REQUIREMENTS=('native_complete','exactness','proof_small_verified','bridge_matched','proof_integrity','negative_controls','compatibility','recovery','portable','dossier')
COUNT_REQUIREMENTS=('first_use_repetitions','reuse_repetitions')
def assess_claims(claims):
    blocked=[key for key in BOOLEAN_REQUIREMENTS if claims.get(key) is not True]
    blocked.extend(key for key in COUNT_REQUIREMENTS if type(claims.get(key)) is not int or claims[key]<3)
    return {'format':'core032.assessment.v1','complete':not blocked,'blocking_obligations':blocked,'claims':claims}


def assess_directory(manifest_path,output):
    from pathlib import Path
    from early_campaign import verify_manifest,write_new,sha
    from campaign import _read,validate_coverage
    manifest_path=Path(manifest_path).resolve();base=manifest_path.parent;m=verify_manifest(manifest_path)
    def optional(path):
        try:return _read(path)
        except (OSError,ValueError):return {}
    native=optional(base/'native/index.json');proofs=optional(base/'proofs/index.json');recovery=optional(base.parent/'recovery-validation.json')
    compatibility=optional(base.parent/'compatibility-final.json');checks=optional(base.parent/'checks/report.json')
    portable=optional(base.parent/'portable/index.json');theorems=optional(base.parent/'native-proofs-007/report.json')
    first=optional(base/'proofs/c1-h2-first-use/index.json');reuse=optional(base/'proofs/primary-reuse-runs/index.json')
    expected={'cases':m['comparison']['matrix']['native'],'candidates':m['comparison']['matrix']['candidates'],'profiles':m['comparison']['matrix']['profiles'],'repetitions':m['repetitions']}
    native_complete=False
    try:validate_coverage(expected,native.get('records',[]));native_complete=True
    except ValueError:pass
    first_good=[r for r in first.get('records',[]) if r.get('proof')=='Verified' and r.get('bridge')=='Matched']
    reuse_good=[r for r in reuse.get('records',[]) if r.get('proof')=='Verified' and r.get('bridge')=='Matched']
    affinity=all(r[s].get('orchestration_cpus')==[0] and r[s].get('measurement_cpu')==7 for r in first_good+reuse_good for s in ('producer','consumer'))
    claims={'native_complete':native_complete,'exactness':native.get('exactness') is True,'proof_small_verified':proofs.get('primary_passed') is True and affinity,'bridge_matched':bool(first_good and reuse_good),'first_use_repetitions':len(first_good),'reuse_repetitions':len(reuse_good),'proof_integrity':theorems.get('outcome')=='Checked' and theorems.get('fresh_kernel_replay') is True,'negative_controls':checks.get('passed') is True and recovery.get('passed') is True and optional(base.parent/'final-checks/report.json').get('passed') is True,'compatibility':compatibility.get('passed') is True,'recovery':recovery.get('passed') is True,'portable':portable.get('passed') is True,'dossier':(base.parent/'investigation.md').is_file() and (base.parent/'evidence/cost-model.md').is_file()}
    # base is evidence/campaign-001, so dossier lives two levels above it.
    claims['dossier']=(base.parent.parent/'investigation.md').is_file() and (base.parent/'cost-model.md').is_file()
    report=assess_claims(claims);report['manifest_sha256']=sha(manifest_path);report['capacity_attempts_complete']=proofs.get('capacity_attempts_complete') is True
    if not report['capacity_attempts_complete']:report['complete']=False;report['blocking_obligations'].append('proof_capacity_attempts')
    integrity=retained_integrity(base,m,native,proofs);report['retained_integrity']=integrity
    if not integrity['passed']:report['complete']=False;report['blocking_obligations'].append('retained_integrity')
    final=final_evidence(base,m,native,proofs,optional)
    report['final_evidence']=final
    if not final['passed']:report['complete']=False;report['blocking_obligations'].extend(final['failures'])
    report['assessment_source_sha256']=sha(__file__)
    report['assessment_class']='Evidence completeness/integrity and scoped requirement review; not a new execution or Safety certificate'
    write_new(output,report);return report


def retained_integrity(base,manifest,native,proofs):
    """Validate retained bytes/coordinates, not just producer-written status flags."""
    from pathlib import Path
    from early_campaign import sha
    from campaign import _read
    from artifacts import attempt_coverage
    base=Path(base);failures=[]
    def bound(parent,relative):
        result=(parent/relative).resolve()
        if not result.is_relative_to(parent.resolve()):raise ValueError('artifact escapes its declared container')
        return result
    for row in native.get('records',[]):
        for phase in row.get('phases',{}).values():
            if phase.get('launched') and (phase.get('measurement_cpu')!=7 or phase.get('orchestration_cpus')!=[0]):failures.append('native actual affinity mismatch')
        for item in row.get('artifacts',[]):
            try:
                path=bound(base/'native',item['path'])
                if path.stat().st_size!=item['container_bytes'] or sha(path)!=item['container_sha256']:raise ValueError('retained native bytes changed')
                if type(item['raw_bytes']) is not int or not 0<=item['raw_bytes']<=1024**3:raise ValueError('invalid raw byte bound')
            except (OSError,ValueError,KeyError) as exc:failures.append(str(exc))
    matrix=manifest['comparison']['matrix'];expected=[(p['case_id'],'accumulated','first-use',r) for p in matrix['proofs'] for r in range(matrix['proof_primary_repetitions'] if p['primary'] else matrix['proof_capacity_repetitions'])]
    try:attempt_coverage([dict(r,candidate='accumulated',outcome=r['proof']) for r in proofs.get('records',[])],expected)
    except ValueError as exc:failures.append(str(exc))
    for row in proofs.get('records',[]):
        for phase in (row.get('producer'),row.get('consumer')):
            if phase and phase.get('launched') and (phase.get('measurement_cpu')!=7 or phase.get('orchestration_cpus')!=[0]):failures.append('proof actual affinity mismatch')
        if row.get('proof')=='Verified':
            try:
                group=bound(base/'proofs',row['group']);report_path=bound(group,row['consumer_report'])
                if sha(report_path)!=row['consumer_report_sha256']:raise ValueError('consumer report changed')
                report=_read(report_path)
                if report.get('status')!='Verified':raise ValueError('consumer did not verify')
                if sha(group/f'rep{row["repetition"]}'/'proof.bin')!=row['proof_sha256']:raise ValueError('verified proof bytes changed')
                if sha(report_path.parent/'parameters.bin')!=report['parameter_export']['sha256']:raise ValueError('independent parameters changed')
            except (OSError,ValueError,KeyError) as exc:failures.append(str(exc))
    return {'passed':not failures,'failures':failures}


def requirement_trace(facts):
    """Requirements have separate evidence classes; file identity is not proof validity."""
    groups = {
        'contract': ('FR-001', 'FR-002', 'SC-001'),
        'views_and_math': ('FR-003', 'FR-004', 'SC-003'),
        'native': ('FR-005', 'FR-006', 'FR-007', 'FR-009', 'SC-002'),
        'negative_controls': ('FR-008',),
        'proof': ('FR-010', 'FR-011', 'SC-004'),
        'lifecycle': ('FR-012', 'FR-013'),
        'protocol': ('FR-014', 'FR-015'),
        'costs': ('FR-016', 'SC-005'),
        'dispositions': ('FR-017', 'SC-006'),
        'compatibility': ('FR-018',),
    }
    rows = []
    for group, requirements in groups.items():
        for requirement in requirements:
            rows.append({'requirement': requirement, 'evidence_group': group,
                         'satisfied': facts.get(group) is True})
    return sorted(rows, key=lambda row: row['requirement'])


def final_evidence(base, manifest, native, proofs, optional):
    from pathlib import Path
    from early_campaign import sha, verify_manifest
    from artifacts import attempt_coverage
    base = Path(base)
    evidence = base.parent
    feature = evidence.parent
    failures = []
    final = optional(evidence / 'final-checks/report.json')
    checks = final.get('checks', [])
    needed = {'latest-native-tests', 'logical-proofs', 'latest-premise-mutations',
              'recovery-with-explicit-capacity-limits', 'quickstart-fresh-consumer',
              'scoped-diagnostics-same-semantics', 'contiguous-reuse-user-cost', 'tracked-and-untracked-source-boundary'}
    checked = (final.get('passed') is True and {r.get('check') for r in checks} == needed
               and len(checks) == len(needed) and all(r.get('passed') is True for r in checks))
    if not checked:
        failures.append('final_actual_checks')
    dispositions = optional(evidence / 'dispositions.json').get('records', [])
    expected = [(c, p) for c in ('A', 'B', 'IVC') for p in ('local-execution', 'independent-checking', 'succinct-history')]
    good_dispositions = (len(dispositions) == 9 and sorted((r.get('candidate'), r.get('consumer')) for r in dispositions) == sorted(expected)
                         and all(r.get('disposition') in ('FurtherResearch', 'Defer', 'NoGo', 'ReferenceOnly')
                                 and type(r.get('rationale')) is str and bool(r['rationale'].strip())
                                 and type(r.get('evidence')) is list and bool(r['evidence']) for r in dispositions))
    if not good_dispositions:
        failures.append('nine_candidate_consumer_dispositions')
    # Reuse groups need their own manifest, exact fresh-consumer reports and bytes.
    reuse = optional(base / 'proofs/primary-reuse-runs/index.json')
    try:
        rm = verify_manifest(base / 'proofs/primary-reuse.json')
        if rm['mode'] != 'reuse' or rm['parameters'] is None:
            raise ValueError('reuse input provenance missing')
        attempt_coverage([dict(r, case_id='c1-h2', candidate='accumulated', outcome=r['proof']) for r in reuse.get('records', [])],
                         [('c1-h2', 'accumulated', 'reuse', r) for r in range(3)])
        for row in reuse['records']:
            group = base / 'proofs/primary-reuse-runs'
            report = group / row['consumer_report']
            if not report.resolve().is_relative_to(group.resolve()):
                raise ValueError('reuse report escapes its group')
            if (row['proof'] != 'Verified' or row['bridge'] != 'Matched'
                    or sha(report) != row['consumer_report_sha256']
                    or sha(report.parent.parent / 'proof.bin') != row['proof_sha256']):
                raise ValueError('reuse proof/report integrity failed')
    except (OSError, ValueError, KeyError) as exc:
        failures.append('reuse_artifacts: ' + str(exc))
    try:
        timed = optional(evidence / 'timed-reuse-001/index.json')
        timed_manifest = verify_manifest(evidence / 'timed-reuse-001/manifest.json')
        timed_source = [r for r in timed_manifest['files'] if r['role'] == 'source' and r['origin'].endswith('/timed_reuse.py')]
        if len(timed_source) != 1 or timed.get('collector_source_sha256') != timed_source[0]['sha256']:
            raise ValueError('timed reuse collector identity differs')
        if timed.get('passed') is not True or len(timed.get('records', [])) != 3:
            raise ValueError('contiguous reuse totals not measured')
        for row in timed['records']:
            if (row['proof'] != 'Verified' or row['bridge'] != 'Matched' or type(row.get('whole_seconds')) not in (int, float) or not __import__('math').isfinite(row['whole_seconds']) or row['whole_seconds'] <= 0):
                raise ValueError('contiguous reuse sampling incomplete')
            report = evidence / 'timed-reuse-001' / row['consumer_report']
            if sha(report) != row['consumer_report_sha256'] or sha(report.parent.parent / 'proof.bin') != row['proof_sha256']:
                raise ValueError('timed reuse proof/report changed')
    except (OSError, ValueError, KeyError) as exc:
        failures.append('timed_reuse: ' + str(exc))
    # Verify supplemental cold reconstruction provenance and retained containers.
    cold = evidence / 'cold-recovery-001'
    try:
        ci = optional(cold / 'index.json')
        cp = optional(cold / 'protocol.json')
        if ci.get('passed') is not True or ci['protocol_sha256'] != sha(cold / 'protocol.json'):
            raise ValueError('cold reconstruction not checked')
        if cp['parent_manifest_sha256'] != sha(base / 'manifest.json') or sha(cold / cp['tool']['path']) != cp['tool']['sha256']:
            raise ValueError('cold reconstruction subject/tool changed')
        for item in cp['cases']:
            if sha(cold / item['path']) != item['sha256']:
                raise ValueError('cold case changed')
        if {r['N'] for r in ci['records']} != {128, 8192} or len(ci['records']) != 2:
            raise ValueError('cold reconstruction coverage incomplete')
        for row in ci['records']:
            if row['recovery']['outcome'] != 'Succeeded':
                raise ValueError('cold reconstruction failed')
            for item in row['artifacts']:
                path = (cold / item['path']).resolve()
                if not path.is_relative_to(cold.resolve()) or sha(path) != item['container_sha256'] or path.stat().st_size != item['container_bytes']:
                    raise ValueError('cold retained bytes changed')
    except (OSError, ValueError, KeyError, TypeError) as exc:
        failures.append('cold_artifacts: ' + str(exc))
    recovery = optional(evidence / 'recovery-validation.json')
    try:
        if recovery.get('passed') is not True or recovery['original_sha256'] != sha(base / 'recovery/index.json') or recovery['supplemental_sha256'] != sha(cold / 'index.json'):
            raise ValueError('recovery validation provenance missing/changed')
    except (OSError, ValueError, KeyError) as exc:
        failures.append('recovery_provenance: ' + str(exc))
    # Do not count exhausted points as exactness comparisons. Small successful
    # comparisons must exist for both distinct mechanisms and both output profiles.
    successful = [r for r in native.get('records', []) if r.get('outcome') == 'Succeeded']
    small = [r for r in successful if r['case_id'] == 'n128-h8-d1-r1-q1-p0']
    native_good = len(small) == 18 and all(r.get('claim_sha256') for r in small)
    for mode in ('existing', 'study'):
        for repetition in range(3):
            values = [r['claim_sha256'] for r in small if r['mode'] == mode and r['repetition'] == repetition]
            native_good = native_good and len(values) == 3 and len(set(values)) == 1
    if not native_good:
        failures.append('successful_exact_native_comparisons')
    evidence_files = [feature / 'contracts/transition-contract.md', feature / 'contracts/proof-and-evidence.md',
                      evidence / 'correspondence.md', evidence / 'circuit-correspondence.md', evidence / 'cost-model.json',
                      evidence / 'cost-model.md', feature / 'investigation.md', evidence / 'dispositions.json']
    hashes = {}
    for path in evidence_files:
        try:
            hashes[str(path.relative_to(feature))] = sha(path)
        except OSError:
            failures.append('missing_scoped_evidence: ' + str(path))
    math = optional(evidence / 'native-proofs-007/report.json')
    frozen_targets = [r for r in manifest['files'] if r['role'] == 'source' and r['origin'].endswith('/proofs/targets.json')]
    targets = optional(base / frozen_targets[0]['path']).get('modules', {}) if len(frozen_targets) == 1 else {}
    math_bound = math_report_matches(manifest, targets, math)
    if not math_bound:failures.append('formal_source_binding')
    facts = {'contract': all(p.is_file() for p in evidence_files[:3]),
             'views_and_math': checked and math_bound,
             'native': native_good and native.get('coverage_complete') is True and native.get('exactness') is True,
             'negative_controls': checked,
             'proof': proofs.get('primary_passed') is True,
             'lifecycle': recovery.get('passed') is True and checked,
             'protocol': native.get('coverage_complete') is True and proofs.get('capacity_attempts_complete') is True,
             'costs': all(p.is_file() for p in evidence_files[4:6]) and optional(evidence / 'final-checks/diagnostics/index.json').get('passed') is True,
             'dispositions': good_dispositions and (feature / 'investigation.md').is_file(),
             'compatibility': optional(evidence / 'compatibility-final.json').get('passed') is True}
    source_audit = frozen_source_audit(manifest, feature)
    if not source_audit['passed']:failures.append('frozen_execution_source_drift')
    trace = requirement_trace(facts)
    failures.extend(row['requirement'] for row in trace if not row['satisfied'])
    return {'passed': not failures, 'failures': failures, 'requirements': trace,
            'evidence_sha256': hashes, 'frozen_source_audit': source_audit,
            'scope': 'Logical theorem scope, structural checks, actual finite controls and explicit correspondence/host assumptions are distinct. Completion does not prove arbitrary Core correctness or authorize adoption.'}


def math_report_matches(manifest, targets, report):
    """A checked different theorem/source inventory cannot support this campaign."""
    if (report.get('outcome') != 'Checked' or report.get('fresh_kernel_replay') is not True
            or set(report.get('modules', {})) != set(targets)):
        return False
    files = [r for r in manifest['files'] if r['role'] == 'source']
    for module, item in report['modules'].items():
        sources = [r for r in files if r['origin'].endswith('/proofs/' + module + '.lean')]
        if len(sources) != 1 or item.get('source_sha256') != sources[0]['sha256']:
            return False
    audit = [r for r in files if r['origin'].endswith('/proofs/Audit.lean')]
    if len(audit) != 1 or report.get('audit_source_sha256') != audit[0]['sha256']:
        return False
    theorems = report.get('theorems', [])
    expected = [target for values in targets.values() for target in values]
    return (bool(expected) and [r.get('target') for r in theorems] == expected
            and all(r.get('kind') == 'theorem' and type(r.get('axioms')) is list
                    and all(type(a) is str for a in r['axioms'])
                    and set(r['axioms']) <= {'propext', 'Classical.choice', 'Quot.sound'} for r in theorems))


def frozen_source_audit(manifest, feature):
    from pathlib import Path
    import hashlib
    from early_campaign import sha
    feature = Path(feature).resolve()
    changed = []
    failures = []
    amendment_path = feature / 'evidence/test-wiring-amendment.json'
    amendment = __import__('json').loads(amendment_path.read_text()) if amendment_path.exists() else {'changes': []}
    wiring = {row['path']: row for row in amendment['changes']}
    allowed_wiring = {'crates/behavior-store/src/store/incremental/research031_tests.rs',
                      'crates/behavior-store/src/store/incremental/research032_tests.rs',
                      'crates/behavior-store/tests/support/research032_reference.rs',
                      'crates/behavior-store/tests/research032.rs',
                      'crates/behavior-store/tests/research032_equivalence.rs'}
    if amendment_path.exists():
        if amendment.get('format') != 'core032.test-wiring-amendment.v1' or set(wiring) != allowed_wiring or len(amendment['changes']) != 5:
            failures.append('test-wiring amendment exceeds its exact test-only scope')
        patch = feature / 'evidence/test-wiring-amendment.patch'
        if not patch.is_file() or sha(patch) != amendment.get('patch_sha256'):
            failures.append('test-wiring patch identity differs')
    for item in manifest['files']:
        if item['role'] != 'source':
            continue
        path = Path(item['origin'])
        try:
            digest = sha(path)
        except OSError:
            digest = None
        if digest != item['sha256']:
            analysis_only = path.parent.resolve() == (feature / 'benchmarks').resolve() and path.name in ('assess.py', 'test_assess.py', 'compatibility.py')
            relative = str(path.relative_to(feature.parents[1])) if path.is_relative_to(feature.parents[1]) else None
            repair = wiring.get(relative, {})
            test_wiring = relative in allowed_wiring and repair.get('before_sha256') == item['sha256'] and repair.get('after_sha256') == digest and digest is not None
            changed.append({'source': str(path), 'frozen_sha256': item['sha256'], 'current_sha256': digest,
                            'classification': 'post-collection assessment only; primary archive unchanged' if analysis_only else 'exact recorded test-module import repair; frozen primary sources/binaries unchanged' if test_wiring else 'Unexpected'})
            if not (analysis_only or test_wiring):
                failures.append(str(path))
    vendor = feature.parents[1] / 'experiments/transition-study032/vendor'
    try:
        from campaign import _read
        origin = _read(vendor / 'nova-upstream.json')
        if sha(vendor / 'nova-portable.patch') != origin['patch_sha256'] or origin['changed_files'] != ['Cargo.toml']:
            raise ValueError('vendor overlay provenance changed')
        for relative, expected in origin['upstream_files_sha256'].items():
            raw = (vendor / 'nova' / relative).read_bytes()
            if relative == 'Cargo.toml':
                portable = b'halo2curves = { version = "0.9.0", features = ["std", "bits", "derive_serde"] }'
                upstream = b'halo2curves = { version = "0.9.0", features = ["std", "bits", "derive_serde", "asm"] }'
                marker = b"[target.'cfg(target_arch = \"x86_64\")'.dependencies]\n"
                portable = marker + portable
                upstream = marker + upstream
                if raw.count(portable) != 1:
                    raise ValueError('portable manifest does not contain the exact reviewed overlay')
                raw = raw.replace(portable, upstream)
            if hashlib.sha256(raw).hexdigest() != expected:
                raise ValueError('vendor source differs: ' + relative)
    except (OSError, ValueError, KeyError) as exc:
        failures.append(str(exc))
    return {'passed': not failures, 'failures': failures, 'post_collection_source_changes': changed,
            'scope': 'primary runtime/proof/collector source archives unchanged; exact post-collection test-wiring repair and later assessment/audit logic identified; every inventoried Nova source byte checked against upstream plus the one reviewed Cargo feature patch'}
