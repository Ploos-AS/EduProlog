# 12 — Trees, graphs and search

## Goals

Represent trees and graphs as Prolog terms and write recursive searches that safely handle cycles.

## Binary trees

Represent an empty tree with `empty` and a node with `node(Value, Left, Right)`.

```prolog
contains(X, node(X, _, _)).
contains(X, node(_, L, _)) :- contains(X, L).
contains(X, node(_, _, R)) :- contains(X, R).
```

## Graphs and cycles

Naive recursive reachability may loop on a cyclic graph. Carry visited nodes explicitly:

```prolog
path(Start, Goal, Path) :-
    path_(Start, Goal, [Start], Rev),
    reverse(Rev, Path).
```

The helper only expands nodes not already visited.

## Depth-first search

This forms a simple DFS. Backtracking explores alternative edges while the visited list prevents an individual path from cycling forever.

## Exercises

1. Build and search a binary tree.
2. Count its nodes.
3. Create a graph containing a cycle.
4. Find a path between two nodes.
5. Ask Prolog for multiple paths.

## Challenge

Enumerate all simple paths between two nodes and discuss why this can become expensive even for a small graph.
