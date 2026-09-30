% EduProlog solution 02 — relations and recursion

parent(anna, ola).
parent(anna, kari).
parent(ola, liv).
parent(kari, per).
parent(liv, mia).

grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

descendant(Child, Ancestor) :-
    parent(Ancestor, Child).
descendant(Descendant, Ancestor) :-
    parent(Ancestor, Child),
    descendant(Descendant, Child).

edge(a, b).
edge(a, e).
edge(b, c).
edge(c, d).
edge(e, f).

reachable(X, Y) :-
    edge(X, Y).
reachable(X, Y) :-
    edge(X, Z),
    reachable(Z, Y).
