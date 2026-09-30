#!/bin/sh
set -eu

ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)

echo "== Loading reference examples =="
for f in "$ROOT"/examples/*.pl; do
    echo "Checking $f"
    swipl --on-warning=status -q -t halt -s "$f"
done

echo "== Loading solutions =="
for f in "$ROOT"/solutions/*.pl; do
    echo "Checking $f"
    swipl --on-warning=status -q -t halt -s "$f"
done

echo "== Syntax-checking exercises =="
for f in "$ROOT"/exercises/*.pl; do
    echo "Checking $f"
    swipl --on-warning=status -q -t halt -s "$f"
done

echo "== Running plunit suites =="
cd "$ROOT/tests"
for f in test_*.pl; do
    echo "Testing $f"
    swipl -q -s "$f" -g "run_tests,halt"
done

echo "EduProlog course verification passed."
