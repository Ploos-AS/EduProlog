# 15 — Constraint Logic Programming with CLP(FD)

## Goals

Use integer constraints to describe relationships among unknown values and then search for concrete solutions.

## From evaluation to constraints

Ordinary arithmetic:

```prolog
Y is X + 1.
```

requires the right side to be evaluable. With CLP(FD):

```prolog
Y #= X + 1.
```

both variables may initially be unknown.

Load the library:

```prolog
:- use_module(library(clpfd)).
```

## Domains

```prolog
X in 1..10,
Y in 1..10,
X + Y #= 10.
```

Constraints narrow the possibilities. `labeling/2` enumerates concrete solutions when needed.

## Comparisons

CLP(FD) provides `#=`, `#\=`, `#<`, `#>`, `#=<` and `#>=`.

## A small puzzle

```prolog
pair(X, Y) :-
    [X,Y] ins 1..9,
    X + Y #= 10,
    X #< Y.
```

Then enumerate:

```prolog
?- pair(X,Y), labeling([], [X,Y]).
```

## all_distinct

Use `all_distinct/1` when variables must take different values.

## Exercises

1. Find every pair summing to 10.
2. Add `X #< Y`.
3. Constrain three distinct values from 1..9 to sum to 15.
4. Compare a CLP(FD) relation with an `is/2` version.
5. Query the same constraints with different variables pre-bound.

## Challenge

Create a small numeric logic puzzle and keep the constraint model separate from search with `labeling/2`.

## Think

Why is it useful to separate “which solutions are valid?” from “in what order should we search for them?”
