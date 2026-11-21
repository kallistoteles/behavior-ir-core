"""Executed only as a declared Cargo RUSTC_WRAPPER; never reads ambient secrets."""

import json
import os
from pathlib import Path
import sys
import uuid


def main():
    compiler, *arguments = sys.argv[1:]
    directory = Path(os.environ["CORE036_RUSTC_TRACE_ROOT"])
    if not directory.is_absolute() or not directory.is_dir() or directory.is_symlink():
        raise ValueError("NativeCompileTraceDestination")
    destination = directory / (str(os.getpid()) + "-" + uuid.uuid4().hex + ".json")
    with destination.open("x") as stream:
        json.dump(
            {
                "format": "core036.rustc-invocation.v2",
                "compiler": compiler,
                "argv": arguments,
                "cwd": os.getcwd(),
            },
            stream,
        )
        stream.write("\n")
    os.execv(compiler, [compiler, *arguments])


if __name__ == "__main__":
    main()
