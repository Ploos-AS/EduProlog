:- begin_tests(module09).
:- consult('../examples/09_testing.pl').

test(square_binding) :-
    square(5, X),
    assertion(X == 25).

test(square_wrong_answer, [fail]) :-
    square(5, 24).

test(all_ball_colors) :-
    findall(C, color(ball, C), Cs),
    assertion(Cs == [red,blue]).

test(divide) :-
    safe_divide(12, 3, R),
    assertion(R =:= 4).

test(divide_by_zero, [fail]) :-
    safe_divide(12, 0, _).

:- end_tests(module09).
