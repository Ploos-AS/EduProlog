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

A common mistake is to use `is/2` before the variable on its right-hand side is bound:

```prolog
next_bad(N, Next) :-
    Next is N + 1.
```

The query `next_bad(N, 5)` raises an instantiation error: arithmetic through `is/2` is not a relation that can simply run backwards. The tracer shows the failure at the call to `is/2` with unbound `N`.

When the direction is intentional, make the contract explicit:

```prolog
next_from(N, Next) :-
    number(N),
    Next is N + 1.
```

If the problem really needs relational integer arithmetic, CLP(FD) is the better tool; module 15 introduces it.

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
