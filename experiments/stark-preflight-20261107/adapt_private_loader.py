"""NixOS loader wrappers for verified private binaries; never patch their bytes."""
import datetime
import hashlib
import json
import os
from pathlib import Path
import shlex

HERE = Path(__file__).resolve().parent
TOOLCHAIN = HERE/'risc0/toolchains/v1.97.0-rust-x86_64-unknown-linux-gnu'
loader = Path(os.environ['CORE_RISC0_LOADER'])
libraries = str(TOOLCHAIN/'lib')+':'+os.environ['CORE_RISC0_LIB_PATH']
assert loader.is_file()
entries = []
for relative in ('bin/rustc','lib/rustlib/x86_64-unknown-linux-gnu/bin/rust-lld'):
    program = TOOLCHAIN/relative
    original = program.with_name(program.name+'.verified-elf')
    assert program.is_file() and not original.exists()
    before = hashlib.sha256(program.read_bytes()).hexdigest()
    program.rename(original)
    command = [str(loader),'--library-path',libraries,'--argv0',str(program),str(original)]
    wrapper = '#!/bin/sh\nexec '+shlex.join(command)+' "$@"\n'
    program.write_text(wrapper)
    program.chmod(0o755)
    assert hashlib.sha256(original.read_bytes()).hexdigest() == before
    entries.append({'program':str(program.relative_to(HERE)),
                    'original':str(original.relative_to(HERE)),
                    'original_elf_sha256':before,
                    'wrapper_sha256':hashlib.sha256(program.read_bytes()).hexdigest()})
record = {'format':'core-next.private-nix-loader-adaptation.v1',
          'at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
          'loader':str(loader),'loader_sha256':hashlib.sha256(loader.read_bytes()).hexdigest(),
          'library_path':libraries,'programs':entries,'original_elf_bytes_unchanged':True,
          'scope':'Private compiler/linker launch only, no crypto backend or global toolchain changes',
          'g1_pass':False}
out = HERE/'results/loader-adaptation.json'
assert not out.exists()
out.write_text(json.dumps(record,indent=2)+'\n')
print('Private compiler/linker loader wrappers installed; both original ELF hashes preserved')
