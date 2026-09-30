# 05 — Search, choice points and backtracking

Prolog normally tries clauses from top to bottom and goals from left to right. When several alternatives can satisfy a goal, it may leave a choice point. If later work fails—or the user asks for another answer—Prolog backtracks to that point.

```prolog
candidate(1).
candidate(2).
candidate(3).
candidate(4).

even_candidate(X) :-
    candidate(X),
    0 is X mod 2.
```

This is a simple generate-and-test pattern. Candidates that fail the second goal cause Prolog to backtrack and try another candidate.

Use SWI-Prolog's `trace.` facility to observe Call, Exit, Redo and Fail.

## Exercises

Predict answer order, reorder facts and compare behavior, trace a query, and construct a predicate with multiple choice points.

## Think

The declarative reading explains what a program means. The procedural reading explains how Prolog searches. Effective Prolog programming requires understanding both.
