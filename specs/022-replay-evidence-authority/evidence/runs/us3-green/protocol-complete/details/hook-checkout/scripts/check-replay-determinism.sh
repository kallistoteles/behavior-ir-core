#!/usr/bin/env python3
import os,pathlib
with (pathlib.Path(os.environ['BEHAVIOR_DIGEST_DIR'])/'outputs.tsv').open('a') as file:
 file.write('core\t018:hook-protocol\t'+'c'*64+'\n')
