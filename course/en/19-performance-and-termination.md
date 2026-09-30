# 19 — Performance, indexing and termination

## Goals

Distinguish correctness from performance, recognize common causes of non-termination, and write predicates that give Prolog good opportunities for efficient search.

## Does the search terminate?

A recursive definition needs more than a base case: the search strategy must be able to reach it.

```prolog
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).
```

This progresses on finite acyclic parent data. General graphs require explicit cycle handling.

## Goal order

Early goals can reduce the search space:

```prolog
result(Person) :-
    person(Person),
    active(Person),
    expensive_test(Person).
```

A cheap selective goal may matter greatly, but do not change logical meaning merely for speed.

## Indexing

Prolog systems may index clauses using instantiated arguments. Exact strategies are implementation-dependent. Design a clear interface first, then measure real call patterns.

## Determinism

Unnecessary choice points can waste work. Use tracing and measurement before considering cut.

## Measure, do not guess

SWI-Prolog provides facilities such as `statistics/2` and profiling tools. Optimization without evidence can reduce declarative clarity without solving a real problem.

## Exercises

1. Diagnose a recursive predicate that does not terminate.
2. Make graph traversal cycle-safe.
3. Compare two goal orders on a dataset.
4. Find an unnecessary choice point.
5. Measure a call before and after a justified change.

## Think

Which performance improvements preserve semantics, and which change the answers or supported calling modes?
