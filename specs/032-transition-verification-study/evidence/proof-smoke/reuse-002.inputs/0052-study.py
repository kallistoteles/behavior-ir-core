#!/usr/bin/env python3
"""Explicit study command boundary; unfinished operations fail closed."""
import argparse
import json
from pathlib import Path
import sys
import uuid


def main(argv=None):
    root = Path(__file__).resolve().parents[3]
    parser = argparse.ArgumentParser(description=__doc__)
    commands = parser.add_subparsers(dest="command", required=True)
    proofs_parser = commands.add_parser("proofs", help="check trusted pinned study proof sources")
    proofs_parser.add_argument("--source", type=Path, default=root / "experiments/transition-study032/proofs")
    proofs_parser.add_argument("--targets", type=Path)
    proofs_parser.add_argument("--output", type=Path)
    prepare_parser=commands.add_parser('prepare',help='freeze independent early proof experiment')
    prepare_parser.add_argument('--scope',required=True,choices=['proof-smoke','comparative'])
    prepare_parser.add_argument('--parameter-mode',required=True,choices=['first-use','reuse'])
    prepare_parser.add_argument('--binary',type=Path,required=True)
    prepare_parser.add_argument('--case',type=Path,action='append')
    prepare_parser.add_argument('--manifest',type=Path,required=True)
    prepare_parser.add_argument('--parameters-from',type=Path)
    for tool in ('reference','nova','consumer','proof-controls','proof-consumer'):
        prepare_parser.add_argument('--'+tool,type=Path)
    smoke_parser=commands.add_parser('proof-smoke',help='run frozen early producer/consumer repetitions')
    smoke_parser.add_argument('--manifest',type=Path,required=True)
    smoke_parser.add_argument('--output',type=Path,required=True)
    verify_parser=commands.add_parser('verify',help='fresh consumer for the exact frozen case')
    verify_parser.add_argument('--manifest',type=Path,required=True)
    verify_parser.add_argument('--case-index',type=int,default=0)
    verify_parser.add_argument('--proof',type=Path,required=True)
    verify_parser.add_argument('--output',type=Path,required=True)
    for name in ["run", "recover", "assess"]:
        command_parser=commands.add_parser(name)
        command_parser.add_argument('--manifest',type=Path,required=True)
        command_parser.add_argument('--output',type=Path,required=True)
        if name=='run':command_parser.add_argument('--phase',choices=['native','proofs','all'],default='all')
    args = parser.parse_args(argv)
    if args.command in ('prepare','proof-smoke','verify'):
        from early_campaign import CampaignError,freeze,verify_manifest
        from profile import ProfileError,preflight,run_child,timing_lock,pin_orchestration
        from artifacts import ArtifactError
        try:
            if args.command=='prepare':
                if args.scope=='comparative':
                    from campaign import prepare
                    if args.parameter_mode!='first-use' or args.parameters_from is not None or not all((args.reference,args.nova,args.consumer,args.proof_controls,args.proof_consumer)):raise CampaignError('comparative preparation requires its exact reference/Nova/public-consumer/control tools, with no precomputed first-use parameters')
                    result=prepare(args.manifest,binary=args.binary,reference=args.reference,nova=args.nova,consumer=args.consumer,proof_controls=args.proof_controls,proof_consumer=args.proof_consumer,root=root)
                    print(json.dumps({'manifest':str(args.manifest),'scope':'comparative'}));return 0
                if not args.case:raise CampaignError('proof-smoke requires at least one exact case')
                experiment=root/'experiments/transition-study032'
                sources=[*experiment.joinpath('src').rglob('*.rs'),*experiment.joinpath('proofs').glob('*.lean'),
                         experiment/'proofs/targets.json',experiment/'Cargo.toml',experiment/'Cargo.lock',experiment/'shell.nix',
                         experiment/'vendor/nova-upstream.json',experiment/'vendor/nova-portable.patch',root/'flake.lock',root/'rust-toolchain.toml',
                         *Path(__file__).parent.glob('*.py'),Path(__file__).with_name('profile.json')]
                result=freeze(args.manifest,binary=args.binary,cases=args.case,sources=sources,mode=args.parameter_mode,parameters_from=args.parameters_from)
                print(json.dumps({'manifest':str(args.manifest),'mode':result['mode']}));return 0
            if args.command=='proof-smoke':
                from proof_smoke import run
                result=run(args.manifest,args.output)
                print(json.dumps({'complete':result['complete'],'index':str(args.output/'index.json')}));return 0 if result['complete'] else 2
            import os
            m=verify_manifest(args.manifest);p=m['profile'];base=args.manifest.resolve().parent
            if not 0<=args.case_index<len(m['cases']):raise CampaignError('unknown frozen case')
            args.output.mkdir(parents=True,exist_ok=False)
            preflight(p,args.output,expected_digest=m['profile_sha256'])
            pin_orchestration(p)
            extra=[]
            if m['parameters'] is not None:
                item=m['parameters'];extra=[str(base/item['path']),item['sha256'],item['identity']]
            with timing_lock('/data/core028/core032-measure.lock'):
                result=run_child([str(base/m['binary']),'verify',str(base/m['cases'][args.case_index]),str(args.proof.resolve()),str(args.output/'consumer-report'),*extra],output_dir=args.output/'consumer',timeout_seconds=p['consumer_timeout_seconds'],address_space_bytes=p['address_space_limit_bytes'],affinity=p['measurement_cpu'],env=dict(os.environ,RAYON_NUM_THREADS='1'))
            print(json.dumps(result));return 0 if result['outcome']=='Succeeded' else 2
        except (CampaignError,ProfileError,ArtifactError,OSError,ValueError) as exc:
            print(f'study032 {args.command}: {exc}',file=sys.stderr);return 2
    if args.command != "proofs":
        from early_campaign import CampaignError
        try:
            if args.command=='run':
                from campaign import run_native
                from proof_campaign import run_proofs
                args.output.mkdir(parents=True,exist_ok=True)
                if args.phase in ('native','all'):run_native(args.manifest,args.output/'native')
                if args.phase in ('proofs','all'):run_proofs(args.manifest,args.output/'proofs')
                return 0
            if args.command=='recover':
                from recovery_campaign import run
                run(args.manifest,args.output);return 0
            if args.command=='assess':
                from assess import assess_directory
                report=assess_directory(args.manifest,args.output);print(json.dumps(report));return 0 if report['complete'] else 2
        except (CampaignError,OSError,ValueError) as exc:
            print(f'study032 {args.command}: {exc}',file=sys.stderr);return 2
    from artifacts import ArtifactError, read_json
    from proofs import ProofError, check_modules
    schema = {"type": "object", "additionalProperties": False, "required": ["format", "modules"],
              "properties": {"format": {"const": "core032.proof-targets.v1"},
                             "modules": {"type": "object", "minProperties": 1,
                                         "additionalProperties": {"type": "array", "items": {"type": "string"}, "uniqueItems": True}}}}
    try:
        targets = read_json(args.targets or args.source / "targets.json", schema)
        output = args.output or root / "target" / ("core032-proofs-" + uuid.uuid4().hex)
        result = check_modules(args.source, targets["modules"], output,
                               audit_source=root / "experiments/transition-study032/proofs/Audit.lean")
    except (ArtifactError, ProofError) as exc:
        print(f"study032 proofs: {exc}", file=sys.stderr)
        return 2
    print(json.dumps({"outcome": result["outcome"], "report": str(output / "report.json")}, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
