# 04 — Arithmetic and comparison

## Goals

Distinguish unification from arithmetic evaluation, use `is/2`, compare numbers, and write simple recursive calculations.

## Terms are not automatically calculations

```prolog
?- X = 2 + 3.
X = 2+3.

?- X is 2 + 3.
X = 5.
```

`=/2` unifies terms. `is/2` evaluates the expression on its right.

## Numeric comparisons

```prolog
2 =:= 1 + 1.
3 =\= 1 + 1.
2 < 3.
3 > 2.
2 =< 2.
3 >= 2.
```

Do not confuse `=` with `=:=`; they answer different questions.

## Recursive calculations

```prolog
factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.
```

Here `N` must be instantiated enough for the comparison and arithmetic expressions to be evaluated.

## Exercises

1. Compare `X = 2+3` with `X is 2+3`.
2. Compare `2+2 = 4` with `2+2 =:= 4`.
3. Implement `square/2`.
4. Implement `factorial/2`.
5. Implement `sum_to/2`, the sum from 1 through N.

## Challenge

Implement `max2(A, B, Max)` without a built-in maximum predicate.

## Think

Why is ordinary Prolog arithmetic less relational than `append/3`? Constraint logic programming later removes many of these limitations.
