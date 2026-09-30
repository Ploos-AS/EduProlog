% EduProlog module 07 — cut and control

minimum(A, B, A) :-
    A =< B,
    !.
minimum(_, B, B).

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
