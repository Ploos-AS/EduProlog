parent(anna, ola).
parent(anna, kari).
parent(ola, liv).
parent(kari, per).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).
