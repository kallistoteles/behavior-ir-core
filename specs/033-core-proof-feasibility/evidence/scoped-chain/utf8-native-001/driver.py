"""Compare the actual encoder with Rust's independent Unicode implementation.

Exhaust all Unicode-range code points, including every surrogate rejection,
then exercise full-u32 rejection boundaries and deterministic samples. This is
supplementary native agreement, never a mathematical correspondence receipt.
"""
import argparse
import hashlib
import json
import resource
import shutil
import subprocess
from pathlib import Path

parser = argparse.ArgumentParser()
parser.add_argument('--out', type=Path, required=True)
a = parser.parse_args()
out = a.out.resolve()
out.mkdir(exist_ok=False)
shutil.copyfile(__file__, out / 'driver.py')
source = Path('experiments/transition-study033/generated/utf8-001/checker_step.rs').resolve()
raw = source.read_bytes()
(out / 'checker_step.rs').write_bytes(raw)
(out / 'vectors.rs').write_text('''extern crate utf8033;
fn check(value: u32) {
    let actual = utf8033::checker_step(value);
    match char::from_u32(value) {
        Some(character) => {
            let mut buffer = [0_u8;4];
            let expected = character.encode_utf8(&mut buffer).as_bytes();
            assert_eq!(actual[5],1,"scalar admission {}",value);
            assert_eq!(actual[4] as usize,expected.len(),"width {}",value);
            for index in 0..4 {
                let wanted = expected.get(index).copied().unwrap_or(0);
                assert_eq!(actual[index],u32::from(wanted),"byte {} at {}",value,index);
            }
        }
        None => assert_eq!(actual[5],0,"invalid scalar admitted {}",value),
    }
}
fn main() {
    for value in 0..=0x110000 { check(value); }
    for value in [0x110001,0x1fffff,0x200000,0x7fffffff,0x80000000,u32::MAX] {
        check(value);
    }
    let mut value = 0x033a4d19_u32;
    for _ in 0..4096 {
        value ^= value << 13;
        value ^= value >> 17;
        value ^= value << 5;
        check(value);
    }
    println!("passed 1118215 native UTF8 vectors, all Unicode scalars and all surrogates");
}
''')

def run(argv, name):
    def limits():
        resource.setrlimit(resource.RLIMIT_AS, (8 * 1024**3, 8 * 1024**3))
    result = subprocess.run(argv, cwd=out, capture_output=True, timeout=300,
                            check=False, preexec_fn=limits)
    (out / (name + '.txt')).write_bytes(result.stdout + result.stderr)
    (out / (name + '.command.json')).write_text(json.dumps({
        'argv': argv, 'exit_code': result.returncode}, indent=2) + '\n')
    if result.returncode:
        raise RuntimeError('native UTF8 tool failed: ' + name)
    return result.stdout

version = run(['rustc', '--version'], 'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:
    raise RuntimeError('wrong pinned compiler')
flags = ['--edition=2024', '-C', 'opt-level=3', '-C', 'overflow-checks=yes']
run(['rustc', *flags, '--crate-type=rlib', '--crate-name=utf8033',
     str(out / 'checker_step.rs'), '-o', str(out / 'libutf8033.rlib')], 'library')
run(['rustc', *flags, str(out / 'vectors.rs'), '--extern',
     'utf8033=' + str(out / 'libutf8033.rlib'), '-o', str(out / 'vectors')], 'harness')
run([str(out / 'vectors')], 'vectors-run')
if source.read_bytes() != raw:
    raise RuntimeError('actual source changed during native audit')
receipt = {
    'format_version': 'core033.utf8-native-diagnostic.v1',
    'outcome': 'DiagnosticNativeAgreement', 'vectors': 1118215,
    'valid_scalars_exhausted': 1112064, 'surrogates_rejected': 2048,
    'compiler': version, 'source_sha256': hashlib.sha256(raw).hexdigest(),
    'scope': 'independent canonical Rust char encoding; native agreement only',
    'g1_pass': False,
}
(out / 'receipt.json').write_text(json.dumps(receipt, indent=2, sort_keys=True) + '\n')
print(json.dumps(receipt))
