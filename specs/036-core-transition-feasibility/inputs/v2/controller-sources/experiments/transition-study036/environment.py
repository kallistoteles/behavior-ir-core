"""Actual bounded tool smokes; file names and hashes never imply readiness."""
from pathlib import Path
from artifact_io import digest
from records import identifier

# Source-selected basic probes. These are smoke capabilities only. Full ENV
# readiness also requires native link, dependencies, store metadata and GC roots.
_PROBES = {'python': ['--version'], 'rustc':['--version'], 'cargo':['--version'],
           'git':['--version'], 'lean':['--version'], 'z3':['--version'],
           'cc':['--version'], 'nix':['--version'], 'ruff':['--version']}


def check_readiness(tools, *, required, runner=None, out_root=None):
    if not isinstance(tools,dict) or not isinstance(required,list) or not required:
        raise ValueError('V2ToolInventory')
    results = {}
    for name in required:
        identifier(name)
        if name not in _PROBES:
            results[name] = {'ready':False,'reason':'No source-selected probe'}
            continue
        tool = tools.get(name)
        fields = {'path','sha256','probe_args','expected_stdout_prefix'}
        if not isinstance(tool,dict) or set(tool)!=fields or runner is None or out_root is None:
            results[name] = {'ready':False,'reason':'Missing actual bounded probe configuration'}
            continue
        path = tool['path']
        if (not isinstance(path,str) or not Path(path).is_absolute() or not Path(path).is_file()
            or tool['probe_args']!=_PROBES[name] or not isinstance(tool['expected_stdout_prefix'],str)
            or not tool['expected_stdout_prefix'] or digest(path)!=tool['sha256']):
            results[name] = {'ready':False,'reason':'Tool bytes or fixed probe mismatch'}
            continue
        out = Path(out_root)/name
        receipt = runner.run([path,*_PROBES[name]],out,wall_seconds=30)
        text = (out/'stdout.txt').read_text()
        ready = (receipt['exit_code']==0 and receipt['stop_reason'] is None and receipt['tree_empty'] is True
                 and receipt['group_empty'] is True and text.startswith(tool['expected_stdout_prefix'])
                 and digest(path)==tool['sha256'])
        results[name] = {'ready':ready,'reason':'Actual bounded version smoke only' if ready else 'Probe failed',
                         'receipt_path':str(out/'receipt.json'),'receipt_sha256':digest(out/'receipt.json')}
    return {'ready':all(v['ready'] for v in results.values()),'scope':'required basic tool smokes only',
            'closure_checked':False,'native_link_checked':False,'tools':results}


def validate_environment_plan(plan):
    if not isinstance(plan,dict) or set(plan)!={'builders','repair','gcroots'}:
        raise ValueError('V2EnvironmentPlanFields')
    if not isinstance(plan['builders'],list) or not isinstance(plan['gcroots'],list):
        raise ValueError('V2EnvironmentPlanLists')
    # No builder capability has been established by this module. A supplied
    # tracked/enforced flag cannot enable external heavy service work.
    if plan['builders']:
        raise ValueError('V2ExternalBuilderCapabilityUnestablished')
    if plan['repair'] is not None:
        raise ValueError('V2SharedRepairRequiresSeparateSafeExecution')
    for ref in plan['gcroots']:
        if (not isinstance(ref,dict) or set(ref)!={'path','target'} or
            not all(isinstance(ref[k],str) and Path(ref[k]).is_absolute() for k in ref)):
            raise ValueError('V2GCRootFields')
        path,target = Path(ref['path']),Path(ref['target'])
        if not path.is_symlink() or not target.exists() or path.resolve()!=target.resolve():
            raise ValueError('V2GCRootTarget')
    return plan
