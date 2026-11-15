"""Owned035 supervisor. Only implemented commands are exposed; no implicit acceptance."""
import argparse,json
from pathlib import Path
import sources

def main():
 p=argparse.ArgumentParser();sub=p.add_subparsers(dest='command',required=True);q=sub.add_parser('prepare-sources');q.add_argument('--out',type=Path,required=True);a=p.parse_args()
 if a.command=='prepare-sources':
  expected=Path(__file__).resolve().parent/'private/core'
  if a.out.resolve()!=expected:raise ValueError('SourceOutputOwnership')
  result=sources.export(sources.ROOT,sources.CORE_REV,a.out)
  print(json.dumps({'operational':'completed','source_files':len(result['files']),'revision':result['revision'],'product_adoption':'unactivated'}))
if __name__=='__main__':main()
