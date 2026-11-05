"""Split all existing suffix-composition proofs without changing a theorem body."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--previous',type=Path,required=True)
parser.add_argument('--out',type=Path,required=True)
args = parser.parse_args()
old = args.previous.resolve()
source = old.with_name(old.name+'-inputs')/'SegmentedFrameSharingComplete.lean'
raw = source.read_bytes()
code = raw.decode()
start = code.index('namespace SegmentedFrameSharing\n')
first = code.index('theorem suffix137 :')
last = code.index('theorem steps_checked :')
imports, header = code[:start],code[start:first]
suffixes = re.split(r'(?m)(?=^theorem suffix\d+ :)',code[first:last])
suffixes = [text for text in suffixes if text.strip()]
indices = [int(re.match(r'theorem suffix(\d+) :',text)[1]) for text in suffixes]
if indices != list(reversed(range(138))):
    raise ValueError('complete unmodified suffix inventory required')
out = args.out.resolve()
out.mkdir(exist_ok=False)
shutil.copyfile(__file__,out/'driver.py')
inventory = json.loads((old.with_name(old.name+'-inputs')/'original-targets.json').read_text())
all_targets = [name for values in inventory.values() for name in values]
if len(all_targets)!=284 or len(set(all_targets))!=284:
    raise ValueError('all284 original distinct bounded targets required')
targets = {}
previous = None
for group,start in enumerate(range(0,len(suffixes),16)):
    module = 'SegmentedFrameSharingSuffixBlock'+str(group)
    text = imports+('import '+previous+'\n' if previous else '')+header
    text += ''.join(suffixes[start:start+16])+'end SegmentedFrameSharing\n'
    (out/(module+'.lean')).write_text(text)
    targets[module] = []
    previous = module
module = 'SegmentedFrameSharingComplete'
(out/(module+'.lean')).write_text('import '+previous+'\n'+header+code[last:])
targets[module] = all_targets
(out/'targets.json').write_text(json.dumps(targets,indent=2)+'\n')
(out/'preparation.json').write_text(json.dumps({
    'outcome':'PreparedUncheckedSuffixComposition','original_source_sha256':hashlib.sha256(raw).hexdigest(),
    'original_targets':284,'suffix_proofs':138,'suffix_modules':9,
    'scope':'every original suffix proof body and all284 bounded targets retained; ordinary compile, complete axiom audit and imported fresh replay remain mandatory',
    'g1_pass':False},indent=2)+'\n')
print(json.dumps({'outcome':'PreparedUncheckedSuffixComposition','targets':284,'g1_pass':False}))
