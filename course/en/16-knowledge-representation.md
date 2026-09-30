# 16 — Knowledge representation and inference

## Goals

Model a small domain with facts and rules, distinguish explicit from derived knowledge, and expose a simple proof chain.

## Facts and rules

```prolog
isa(robin, bird).
isa(bird, animal).

kind_of(X, Y) :- isa(X, Y).
kind_of(X, Y) :-
    isa(X, Z),
    kind_of(Z, Y).
```

`isa/2` stores explicit knowledge; `kind_of/2` describes how further knowledge is derived.

## Properties

```prolog
property(bird, has_wings).
```

Properties can be inherited:

```prolog
has_property(X, P) :- property(X, P).
has_property(X, P) :-
    isa(X, Parent),
    has_property(Parent, P).
```

## Explanations

Returning *why* a conclusion holds can be more useful than returning only `true`. Represent a proof path as data so inference becomes inspectable and testable.

## Open and closed knowledge

Absence of a fact does not necessarily mean its opposite is known. Remember module 06 when using `\+`.

## Exercises

1. Build a class hierarchy.
2. Attach properties at different levels.
3. Query inherited properties.
4. Return a proof path for a classification.
5. Represent something unknown rather than false.

## Challenge

Create a conclusion with multiple proof paths and enumerate all explanations.

## Think

What do we gain by keeping base facts separate from the rules that derive new knowledge?
