# Sourced once by the explicitly pinned noninteractive Nix launch Bash.
# The original gate remains a Bash child; Python performs both captures.
core036_q_helper="$1"
core036_q_job="$2"
if [ -z "${CORE036_Q_PYTHON:-}" ] || [ -z "${CORE036_Q_EXPLICIT_PATH:-}" ]; then
  return 91
fi
PATH="$CORE036_Q_EXPLICIT_PATH:$PATH"
export PATH
export CORE036_Q_PARENT_PID="$$"
export CORE036_Q_PARENT_BASH="$BASH"
builtin hash -r
"$CORE036_Q_PYTHON" "$core036_q_helper" --runtime-job "$core036_q_job"
core036_q_status=$?
return "$core036_q_status"
