"""Keep actual exit codes and timeout diagnostics for bounded Lean commands."""

from pathlib import Path
import subprocess

from artifact_io import digest, write_once


def run_logged_command(
    folder, argv, *, cwd, env, seconds, preexec_fn=None, metadata=None
):
    folder = Path(folder)
    folder.mkdir(parents=True, exist_ok=False)
    timed_out = False
    exit_code = None
    with (
        (folder / "stdout.txt").open("xb") as stdout,
        (folder / "stderr.txt").open("xb") as stderr,
    ):
        try:
            result = subprocess.run(
                argv,
                cwd=cwd,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=seconds,
                check=False,
                preexec_fn=preexec_fn,
            )
            exit_code = result.returncode
        except subprocess.TimeoutExpired:
            # subprocess.run kills and waits for its child before raising. Its
            # TimeoutExpired exposes no actual child exit code; don't invent one.
            timed_out = True
    row = {
        **(metadata or {}),
        "argv": argv,
        "exit_code": exit_code,
        "timed_out": timed_out,
        "timeout_seconds": seconds,
        "stdout_sha256": digest(folder / "stdout.txt"),
        "stderr_sha256": digest(folder / "stderr.txt"),
    }
    write_once(folder / "result.json", row)
    return row
