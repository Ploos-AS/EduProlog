# 02 — Relations and recursion

## Goals

After this module you should be able to build relations from other relations, explain base and recursive cases, and use recursion for relationships of arbitrary depth.

## Relations

```prolog
parent(anna, ola).
parent(ola, liv).

grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).
```

Variables connect goals. Prolog searches for bindings that satisfy the complete rule.

## Recursion

```prolog
descendant(Child, Ancestor) :-
    parent(Ancestor, Child).

descendant(Descendant, Ancestor) :-
    parent(Ancestor, Child),
    descendant(Descendant, Child).
```

The first clause is the base case. The second reduces the problem by one generation before recurring.

The same pattern can express reachability in a graph:

```prolog
reachable(X, Y) :- edge(X, Y).
reachable(X, Y) :-
    edge(X, Z),
    reachable(Z, Y).
```

## Exercises

Extend the family tree, implement `sibling/2`, create a graph with at least six nodes, query all reachable nodes, and trace one recursive query by hand.

## Challenge

Implement `ancestor/2` and experiment with querying the same relation in different directions.

## Think

A Prolog predicate describes a relation rather than merely a function from inputs to outputs. Which predicates here remain useful when queried “backwards”?
