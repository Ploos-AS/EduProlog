# 02 — Relations and recursion

## Goals

After this module you should be able to write multi-argument relations, derive relations from facts and rules, explain base and recursive cases, express transitive relationships, and recognize recursion that may not terminate.

## Relations

```prolog
parent(anna, ola).
parent(ola, liv).
```

A new relation can be built from existing ones:

```prolog
grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).
```

For `grandparent(anna, liv)`, Prolog searches for a value of `Y` satisfying both goals.

## Recursion

```prolog
descendant(Child, Ancestor) :-
    parent(Ancestor, Child).

descendant(Descendant, Ancestor) :-
    parent(Ancestor, Child),
    descendant(Descendant, Child).
```

The first clause is the base case. The second reduces the problem by one generation before recurring.

## Graphs

The same pattern works outside family trees:

```prolog
reachable(X, Y) :- edge(X, Y).
reachable(X, Y) :-
    edge(X, Z),
    reachable(Z, Y).
```

The path length does not have to be known in advance.

## Order matters

Rules that look logically similar can behave differently operationally. Recursive calls must make progress toward a simpler case; cyclic graphs need additional care, which later modules cover in detail.

## Exercises

1. Extend the family tree.
2. Implement `sibling/2`.
3. Ask for every descendant of one person.
4. Create a graph with at least six nodes.
5. Find every node reachable from a chosen start.
6. Draw the recursive calls for one query by hand.

## Challenge

Implement `ancestor/2` as the opposite view of `descendant/2` and query it in several directions.

## Think

Prolog predicates are relations, not merely functions with inputs and outputs. Which predicates in this module remain useful when queried backwards?
