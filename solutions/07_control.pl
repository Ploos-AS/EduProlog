minimum(A, B, A) :-
    A =< B,
    !.
minimum(A, B, B) :-
    B < A.

absolute(X, A) :-
    ( X >= 0 ->
        A is X
    ;
        A is -X
    ).

color(ball, red).
color(ball, blue).

first_color(Item, Color) :-
    color(Item, Color),
    !.
