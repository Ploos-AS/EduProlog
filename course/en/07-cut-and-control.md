# 07 — Cut and control

The cut, `!`, commits to choices made since the current predicate was entered and prunes relevant alternatives.

A *green cut* removes unnecessary search without changing the intended logical answers. A *red cut* affects which answers the program produces or hides information that would otherwise be represented explicitly.

```prolog
minimum(A, B, A) :-
    A =< B,
    !.
minimum(_, B, B).
```

Prolog also provides if-then-else:

```prolog
absolute(X, A) :-
    ( X >= 0 -> A is X ; A is -X ).
```

## Exercises

Implement minimum with and without cut, write absolute value with if-then-else, trace a cut, and construct an example where a cut incorrectly removes a legitimate solution.

## Principle

Do not add cuts merely because a program backtracks more than expected. Understand the search first, then decide whether explicit control is really appropriate.
