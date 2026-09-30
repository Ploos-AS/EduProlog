#!/bin/sh
set -eu

ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)

echo "== Loading reference examples =="
for f in "$ROOT"/examples/*.pl; do
    echo "Checking $f"
    swipl -q -t halt -s "$f"
done

echo "== Running plunit suites =="
cd "$ROOT/tests"
for f in test_*.pl; do
    echo "Testing $f"
    swipl -q -s "$f" -g "run_tests,halt"
done

echo "EduProlog course verification passed."
