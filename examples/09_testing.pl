% EduProlog module 09 — code intended for plunit exercises

square(X, Y) :-
    Y is X * X.

color(ball, red).
color(ball, blue).
color(cube, green).

safe_divide(_, 0, _) :-
    fail.
safe_divide(A, B, Result) :-
    B =\= 0,
    Result is A / B.
