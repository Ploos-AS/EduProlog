# 19 — Performance, indexing and termination

Correctness comes first, but Prolog's search strategy means goal order, termination and determinism can strongly affect performance.

Recursive calls must make progress, and cyclic data often requires explicit visited-state handling. Selective inexpensive goals can reduce a search space when placed appropriately.

Prolog implementations may index clauses using instantiated arguments. Exact indexing behavior is implementation-dependent, so design clear predicate interfaces first and measure the real call patterns before optimizing.

Unnecessary choice points can also cost work. Use tracing, statistics and profiling to find actual problems rather than inserting cuts speculatively.

## Exercises

Diagnose non-termination, make graph traversal cycle-safe, compare goal orderings, locate an unnecessary choice point, and measure a justified optimization.
