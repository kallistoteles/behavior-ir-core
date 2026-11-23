"""One source-bound fake-solver repair; original assertions remain byte exact.

The 100ms operational guard and 500ms intentional timeout are unchanged.
No Core production source, behavior or canonical gate step is replaced.
"""

import difflib
import hashlib

TEST_PATH = "crates/behavior-cli/tests/cli_trusted_governance.rs"
ORIGINAL_SHA256 = "c26225e4aeb7d9101e2196927c4d23690b0f01028afb72b6cbe6dc8025b5191c"
HELPER_OLD = "        let source = format!(\n            \"#!/usr/bin/env python3\\nimport sys,time,pathlib\\nif '--version' in sys.argv:\\n print('Z3 version 4.16.0 - 64 bit');sys.exit(0)\\nsys.stdin.read()\\np=pathlib.Path({counter:?})\\nn=int(p.read_text()) if p.exists() else 0\\np.write_text(str(n+1))\\nmode={mode_text:?}\\nif mode.startswith('prefix_') and n==0:\\n print('unsat');print('(:reason-unknown '+chr(34)+chr(34)+')');sys.exit(0)\\nif 'timeout' in mode:time.sleep(0.5)\\nelse:print('not a solver answer')\\n\"\n        );"
HELPER_NEW = '        let counter_quoted = format!("\'{}\'", counter.replace(\'\\\'\', "\'\\\\\'\'"));\n        let source = format!(\n            r#"#!/usr/bin/env bash\nset -eu\nif [ "${{1-}}" = --version ]; then\n  printf \'%s\\n\' \'Z3 version 4.16.0 - 64 bit\'; exit 0\nfi\nwhile IFS= read -r line; do :; done\ncounter={counter_quoted}\nmode={mode_text}\nn=0\nif [ -f "$counter" ]; then IFS= read -r n < "$counter" || true; fi\nprintf \'%s\' "$((n + 1))" > "$counter"\ncase "$mode" in prefix_*)\n  if [ "$n" -eq 0 ]; then\n    printf \'%s\\n\' unsat \'(:reason-unknown "")\'; exit 0\n  fi;;\nesac\ncase "$mode" in *timeout*) exec sleep 0.5;;\n  *) printf \'%s\\n\' \'not a solver answer\';;\nesac\n"#\n        );'


def replace_helper(source):
    if (
        not isinstance(source, str)
        or hashlib.sha256(source.encode()).hexdigest() != ORIGINAL_SHA256
    ):
        raise ValueError("QualityTimeoutExactOriginalFixture")
    if source.count(HELPER_OLD) != 1:
        raise ValueError("QualityTimeoutExactHelperSite")
    return source.replace(HELPER_OLD, HELPER_NEW, 1)


def patch_bytes(source):
    changed = replace_helper(source)
    return "".join(
        difflib.unified_diff(
            source.splitlines(keepends=True),
            changed.splitlines(keepends=True),
            fromfile="a/" + TEST_PATH,
            tofile="b/" + TEST_PATH,
            n=3,
        )
    ).encode()
