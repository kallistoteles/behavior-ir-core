"""Wrap remaining private ELF interpreters, including the host LLD proxy."""
import datetime
import hashlib
import json
import os
from pathlib import Path
import shlex
import struct

HERE = Path(__file__).resolve().parent
TOOLCHAIN = HERE/'risc0/toolchains/v1.97.0-rust-x86_64-unknown-linux-gnu'
loader = Path(os.environ['CORE_RISC0_LOADER'])
libraries = str(TOOLCHAIN/'lib')+':'+os.environ['CORE_RISC0_LIB_PATH']
entries = []
for program in sorted(TOOLCHAIN.rglob('*')):
    if not program.is_file() or program.is_symlink() or program.name.endswith('.verified-elf'):
        continue
    with program.open('rb') as f:
        head = f.read(64)
        if len(head)<64 or head[:6] != b'\x7fELF\x02\x01':
            continue
        offset = struct.unpack_from('<Q',head,32)[0]
        length,count = struct.unpack_from('<HH',head,54)
        assert length >= 56 and count < 1024
        has_interpreter = False
        for index in range(count):
            f.seek(offset+index*length)
            ph = f.read(56)
            assert len(ph)==56
            if struct.unpack_from('<I',ph)[0] == 3:
                has_interpreter = True
        if not has_interpreter:
            continue
    original = program.with_name(program.name+'.verified-elf')
    assert not original.exists()
    before = hashlib.sha256(program.read_bytes()).hexdigest()
    program.rename(original)
    command = [str(loader),'--library-path',libraries,'--argv0',str(program),str(original)]
    program.write_text('#!/bin/sh\nexec '+shlex.join(command)+' "$@"\n')
    program.chmod(0o755)
    assert hashlib.sha256(original.read_bytes()).hexdigest()==before
    entries.append({'program':str(program.relative_to(HERE)),
                    'original':str(original.relative_to(HERE)),
                    'original_elf_sha256':before,
                    'wrapper_sha256':hashlib.sha256(program.read_bytes()).hexdigest()})
out = HERE/'results/loader-adaptation-002.json'
assert not out.exists()
out.write_text(json.dumps({'format':'core-next.private-nix-loader-adaptation.v1',
    'at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
    'programs':entries,'loader':str(loader),'library_path':libraries,
    'original_elf_bytes_unchanged':True,'global_settings_changed':False,'g1_pass':False},indent=2)+'\n')
print('Additional private ELF wrappers:',len(entries))
