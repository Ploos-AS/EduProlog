# 05 — Search, choice points and backtracking

## Goals

Understand how Prolog searches: clauses from top to bottom, goals from left to right, choice points, depth-first search and backtracking.

## Multiple answers

```prolog
color(apple, red).
color(cherry, red).
color(banana, yellow).
```

For `color(Fruit, red)`, Prolog returns the first solution. Asking for another answer makes it return to a point where another choice remains.

## Choice points

```prolog
route(a, b).
route(a, c).
route(b, d).
route(c, d).
```

The query `route(a, X)` has more than one matching fact, so Prolog must remember alternatives.

## Depth-first search

Standard Prolog effectively performs depth-first search, trying clauses in program order. Order can therefore affect termination and performance even when the declarative reading appears similar.

## Generate and test

```prolog
candidate(1).
candidate(2).
candidate(3).
candidate(4).

even_candidate(X) :-
    candidate(X),
    0 is X mod 2.
```

Candidates are generated first and tested second. Failure causes backtracking to the next candidate.

## Observe the search

In SWI-Prolog, use `trace.` before a query and `notrace.` afterwards. Watch the Call, Exit, Redo and Fail ports.

## Exercises

1. Find all red fruits by backtracking.
2. Predict answer order before running a query.
3. Reorder facts and observe the result.
4. Trace `even_candidate(X)`.
5. Construct a predicate with at least two choice points.

## Challenge

Build a small travel graph with multiple routes and explain where Prolog backtracks to try alternatives.

## Think

The declarative reading says what is true; the procedural reading explains how Prolog searches. Effective Prolog programming requires both.
