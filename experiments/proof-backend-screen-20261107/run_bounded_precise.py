"""Use Linux pidfd exit notification, avoiding timeout-wait polling latency.

The construction recorder remains unchanged; this wrapper is separately hashed
in the pilot freeze. Whole time still includes launch and parent-side overhead.
"""
import os
from pathlib import Path
import runpy
import select
import subprocess

original_wait = subprocess.Popen.wait

def notified_wait(self, timeout=None):
    if timeout is None or self.returncode is not None:
        return original_wait(self, timeout=timeout)
    try:
        fd = os.pidfd_open(self.pid)
    except ProcessLookupError:
        return original_wait(self, timeout=timeout)
    try:
        ready, _, _ = select.select([fd], [], [], timeout)
        if not ready:
            raise subprocess.TimeoutExpired(self.args, timeout)
        return original_wait(self)
    finally:
        os.close(fd)

subprocess.Popen.wait = notified_wait
runpy.run_path(str(Path(__file__).with_name('run_bounded.py')), run_name='__main__')
