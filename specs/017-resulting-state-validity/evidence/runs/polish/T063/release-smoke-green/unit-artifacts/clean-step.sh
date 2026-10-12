#!/usr/bin/env bash
set -euo pipefail
cli="$RELEASE_SMOKE_CLI"
tmp="$RELEASE_SMOKE_TMP"
current=""
step() { current="$1"; }
fail() { echo "release-check: FAILED step $current: $*" >&2; exit 1; }
step "4 clean run"
mkdir -p "$tmp/clean"
cp tests/fixtures/wire/valid/invoice.json "$cli" "$tmp/clean/"
# This trusted smoke world contains exactly the fixture's Invoice and no Users.
# Preserve the historical request; supply complete current parent facts only in
# the temporary input consumed by the clean-environment check.
python3 - tests/fixtures/requests/discount_breaks_invariant.json \
  "$tmp/clean/discount_breaks_invariant.json" <<'PYREQUEST'
import json,sys
request=json.load(open(sys.argv[1]))
request['facts']={'universe':[
    {'entity':'Invoice','members':[request['state']['invoice']]},
    {'entity':'User','members':[]},
]}
with open(sys.argv[2],'w') as output:
    json.dump(request,output,sort_keys=True,separators=(',',':'))
PYREQUEST
(
  cd "$tmp/clean" &&
    env -i PATH=/nonexistent "./$(basename "$cli")" admit invoice.json >/dev/null &&
    { env -i PATH=/nonexistent "./$(basename "$cli")" eval invoice.json \
        discount_breaks_invariant.json >record.json || [ $? -eq 1 ]; } &&
    env -i PATH=/nonexistent "./$(basename "$cli")" replay invoice.json record.json >/dev/null
) || fail "the CLI does not admit, evaluate and replay in an empty environment"

