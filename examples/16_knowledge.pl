% EduProlog module 16 — knowledge representation

isa(robin, bird).
isa(sparrow, bird).
isa(bird, animal).
isa(cat, mammal).
isa(mammal, animal).

property(bird, has_wings).
property(mammal, warm_blooded).
property(animal, needs_food).

kind_of(X, Y) :-
    isa(X, Y).
kind_of(X, Y) :-
    isa(X, Z),
    kind_of(Z, Y).

has_property(X, P) :-
    property(X, P).
has_property(X, P) :-
    isa(X, Parent),
    has_property(Parent, P).

proof_kind(X, Y, [isa(X,Y)]) :-
    isa(X, Y).
proof_kind(X, Y, [isa(X,Z)|Rest]) :-
    isa(X, Z),
    proof_kind(Z, Y, Rest).
