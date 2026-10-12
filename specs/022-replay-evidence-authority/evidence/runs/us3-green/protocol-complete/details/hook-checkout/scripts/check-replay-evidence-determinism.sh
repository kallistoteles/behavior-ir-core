#!/usr/bin/env python3
import os,pathlib,sys
with pathlib.Path(os.environ['REPLAY022_HOOK_LOG']).open('a') as file: file.write('022 hook\n')
if os.environ.get('REPLAY022_HOOK_MODE')=='fail': sys.exit(19)
if os.environ.get('BEHAVIOR_DIGEST_DIR'):
 with (pathlib.Path(os.environ['BEHAVIOR_DIGEST_DIR'])/'outputs.tsv').open('a') as file:
  file.write('core\t022:hook-protocol\t'+'b'*64+'\n')
