# 06 — Negation as failure

## Goals

Understand `\+/1`, why it is called negation as failure, and why it is not classical logical negation.

## When a goal cannot be proven

```prolog
bird(robin).
bird(sparrow).

?- \+ bird(cat).
true.
```

Prolog tried to prove `bird(cat)` and found no proof.

## The closed-world assumption

In ordinary Prolog programs, absence of proof is often enough for `\+ Goal` to succeed. This does not mean the opposite proposition has been proven in classical logic.

## Variables: an important trap

```prolog
?- \+ bird(X).
false.
```

This does not enumerate everything that is not a bird. Prolog finds a value making `bird(X)` true, so the negation fails.

A useful rule is to apply negation only after the relevant variables are sufficiently instantiated.

## Filtering

```prolog
person(ada).
person(grace).
person(alan).
programmer(ada).
programmer(grace).

non_programmer(X) :-
    person(X),
    \+ programmer(X).
```

Order matters: generate a known person first, then test whether programmer status cannot be proven.

## Exercises

1. Compare `\+ bird(cat)` and `\+ bird(X)`.
2. Implement `non_programmer/1`.
3. Reverse its goals and explain the difference.
4. Build allowed/blocked data and filter it.
5. Give an example where unknown information must not be treated as false.

## Think

The distinction between “I can prove this is false” and “I cannot prove this is true” is fundamental in knowledge-based systems.
