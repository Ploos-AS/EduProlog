% EduProlog module 07 — cut and control

minimum(A, B, A) :-
    A =< B,
    !.
minimum(A, B, B) :-
    B < A.

% A deliberately red-cut variant for teaching: the cut is required for its
% behaviour, and querying a pre-bound wrong result exposes the problem.
minimum_red(A, B, A) :-
    A =< B,
    !.
minimum_red(_, B, B).

absolute(X, A) :-
    ( X >= 0 ->
        A is X
    ;
        A is -X
    ).

color(ball, red).
color(ball, blue).
color(cube, green).

first_color(Item, Color) :-
    color(Item, Color),
    !.
