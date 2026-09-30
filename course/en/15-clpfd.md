# 15 — Constraint Logic Programming with CLP(FD)

CLP(FD) makes integer arithmetic substantially more relational.

```prolog
:- use_module(library(clpfd)).

pair(X, Y) :-
    [X,Y] ins 1..9,
    X + Y #= 10,
    X #< Y.
```

Unlike `Y is X + 1`, a constraint such as `Y #= X + 1` can operate while both variables are unknown.

Constraints describe valid solutions. `labeling/2` performs enumeration when concrete answers are required. Useful operators include `#=`, `#\=`, `#<`, `#>`, `#=<`, and `#>=`; `all_distinct/1` is useful for many puzzles.

## Exercises

Solve sum constraints, add ordering constraints, require distinct values, compare CLP(FD) with `is/2`, and query the same relation with different variables already bound.
