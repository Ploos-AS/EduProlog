# 07 — Cut and control

## Goals

Understand `!/0`, if-then-else, green and red cuts, and why cut should be used deliberately.

## Cut

When Prolog passes `!`, relevant alternatives created since the current predicate was entered are discarded.

```prolog
sign(N, positive) :- N > 0, !.
sign(0, zero) :- !.
sign(_, negative).
```

## Green cut

A green cut removes unnecessary search without changing the intended logical answers.

```prolog
minimum(A, B, A) :-
    A =< B,
    !.
minimum(_, B, B).
```

## Red cut

A red cut changes the intended answers or hides information that would otherwise need to be expressed in the rules. It makes the declarative meaning harder to see and deserves extra caution.

## If-then-else

```prolog
absolute(X, A) :-
    ( X >= 0 ->
        A is X
    ;
        A is -X
    ).
```

This can be clearer than some cut-based control patterns.

## Cut and backtracking

```prolog
first_color(Item, Color) :-
    color(Item, Color),
    !.
```

Even if several `color/2` facts match, only the first solution remains.

## Exercises

1. Implement `minimum/3` with a green cut.
2. Write it without cut and compare answers.
3. Implement absolute value with if-then-else.
4. Create an example where cut removes a legitimate answer.
5. Trace execution across a cut.

## Principle

Do not add cut merely because a program backtracks more than expected. Understand the search first, then ask whether the desired control can be expressed more clearly without cut.

## Think

What is lost from the declarative reading when control constructs become necessary to understand which answers a program returns?
