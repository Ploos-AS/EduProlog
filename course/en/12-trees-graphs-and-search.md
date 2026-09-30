# 12 — Trees, graphs and search

Represent recursive structures directly as Prolog terms. A binary tree can use `empty` and `node(Value, Left, Right)`.

Graphs require extra care: naive recursive reachability may loop on cycles. A depth-first path predicate can carry a list of visited nodes and refuse to revisit them.

Backtracking naturally explores alternative edges, while the visited set makes each individual path cycle-safe.

## Exercises

Search a binary tree, count its nodes, construct a cyclic graph, find paths, and enumerate multiple simple paths between two nodes.
