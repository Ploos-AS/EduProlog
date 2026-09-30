% EduProlog module 05 — search and backtracking

color(apple, red).
color(cherry, red).
color(banana, yellow).
color(grape, purple).

candidate(1).
candidate(2).
candidate(3).
candidate(4).

even_candidate(X) :-
    candidate(X),
    0 is X mod 2.

route(a, b).
route(a, c).
route(b, d).
route(c, d).

two_step(X, Z) :-
    route(X, Y),
    route(Y, Z).
