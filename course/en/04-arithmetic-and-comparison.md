# 04 — Arithmetic and comparison

Prolog distinguishes term unification from arithmetic evaluation.

```prolog
?- X = 2 + 3.
X = 2+3.

?- X is 2 + 3.
X = 5.
```

Use `=:=` and `=\=` for numeric equality and inequality, and `<`, `>`, `=<`, and `>=` for ordering.

A recursive calculation can be written as:

```prolog
factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.
```

## Exercises

Implement square, factorial, the sum from 1 to N, and a `max2/3` relation. Experiment with the difference between `=` and `=:=`.

## Think

Ordinary Prolog arithmetic is less relational than predicates such as `append/3`. Later, constraint logic programming will let us recover much of that relational style.
