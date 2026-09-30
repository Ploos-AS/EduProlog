# 10 — Debugging and tracing

## Goals

Investigate Prolog systematically, read tracer ports, and distinguish logical errors, search-order problems and non-termination.

## Start with a small query

Reduce a failing goal. Test its subgoals independently and inspect the bindings they produce.

## Tracer ports

SWI-Prolog's tracer shows:

- **Call** — a goal is about to be attempted.
- **Exit** — it succeeded.
- **Redo** — backtracking retries it.
- **Fail** — it could not succeed.

Enable tracing with `trace.` and disable it with `notrace.`.

## A typical problem

```prolog
last_bad(X, [_|Xs]) :- last_bad(X, Xs).
last_bad(X, [X]).
```

It may work, but the clause order creates unnecessary search. A clearer version places the base case first:

```prolog
last_good(X, [X]).
last_good(X, [_|Xs]) :- last_good(X, Xs).
```

## Non-termination

Recursion must make progress. Repeating the same or a larger problem can make search continue indefinitely.

## Debugging routine

1. Reproduce with the smallest query.
2. Check facts and base cases.
3. Test each subgoal.
4. Trace and inspect bindings.
5. Look for unexpected choice points and Redo.
6. Verify recursive progress.
7. Add a regression test after the fix.

## Exercises

Find and repair examples involving a wrong base case, poor goal order and recursion that does not make progress. Add a regression test for each repair.
