% EduProlog module 12 — trees, graphs and search

tree(
    node(8,
         node(3, node(1, empty, empty), node(6, empty, empty)),
         node(10, empty, node(14, empty, empty)))
).

contains(X, node(X, _, _)).
contains(X, node(_, L, _)) :- contains(X, L).
contains(X, node(_, _, R)) :- contains(X, R).

tree_size(empty, 0).
tree_size(node(_, L, R), N) :-
    tree_size(L, LN),
    tree_size(R, RN),
    N is 1 + LN + RN.

edge(a, b).
edge(b, c).
edge(c, a).
edge(b, d).
edge(a, e).
edge(e, d).

path(Start, Goal, Path) :-
    path_(Start, Goal, [Start], Rev),
    reverse(Rev, Path).

path_(Goal, Goal, Visited, Visited).
path_(Current, Goal, Visited, Path) :-
    edge(Current, Next),
    \+ memberchk(Next, Visited),
    path_(Next, Goal, [Next|Visited], Path).
