"""Launch the publisher-pinned untrusted producer through a private Nix loader."""
import hashlib
import json
import os
from pathlib import Path
import shlex

HERE = Path(__file__).resolve().parent
layout = json.loads((HERE/'results/external-asset-layout.json').read_text())
program = Path(layout['prover'])
assert hashlib.sha256(program.read_bytes()).hexdigest() == layout['prover_sha256']
loader = Path(os.environ['CORE_RISC0_LOADER'])
libraries = str(program.parent)+':'+os.environ['CORE_RISC0_LIB_PATH']
original = program.with_name(program.name+'.verified-elf')
assert not original.exists()
program.rename(original)
argv = [str(loader),'--library-path',libraries,'--argv0',str(program),str(original)]
program.write_text('#!/bin/sh\nexec '+shlex.join(argv)+' "$@"\n')
program.chmod(0o755)
record = {'format':'core-next.external-prover-loader.v1','producer':str(program),
          'original':str(original),'original_elf_sha256':layout['prover_sha256'],
          'wrapper_sha256':hashlib.sha256(program.read_bytes()).hexdigest(),
          'loader':str(loader),'library_path':libraries,'original_elf_bytes_unchanged':True,
          'scope':'Untrusted local producer startup; strict independent receipt verification still required',
          'g1_pass':False}
assert hashlib.sha256(original.read_bytes()).hexdigest()==record['original_elf_sha256']
(HERE/'results/external-loader.json').write_text(json.dumps(record,indent=2)+'\n')
print('External producer original ELF preserved; private loader wrapper ready')
