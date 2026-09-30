# 11 — Higher-order predicates and library patterns

## Goals

Understand predicates that receive callable goals as arguments and use `call/N`, `maplist`, `include` and `foldl`.

## call/N

```prolog
apply_twice(P, X, Y) :-
    call(P, X, Z),
    call(P, Z, Y).
```

A predicate can therefore participate in the data passed to another predicate.

## maplist

```prolog
double(X, Y) :- Y is X * 2.

?- maplist(double, [1,2,3], Ys).
Ys = [2,4,6].
```

## Filtering

```prolog
positive(X) :- X > 0.

?- include(positive, [-2,3,0,5], Ys).
Ys = [3,5].
```

## Folding

`foldl/4` expresses accumulation:

```prolog
add(X, Acc, Out) :- Out is Acc + X.
```

Then `foldl(add, [1,2,3], 0, Sum)` computes the sum.

## Readability first

Higher-order predicates can remove repetitive recursion, but shorter is not automatically clearer.

## Exercises

1. Square a list with `maplist/3`.
2. Select even values with `include/3`.
3. Sum a list with `foldl/4`.
4. Implement one operation recursively and compare.
5. Write a small predicate using `call/3`.

## Think

When does abstraction clarify the program, and when does it merely hide a simple recursive idea?
