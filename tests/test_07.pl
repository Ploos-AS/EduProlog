:- begin_tests(module07).
:- consult('../examples/07_control.pl').

test(minimum_left) :- minimum(2, 5, 2).
test(minimum_right) :- minimum(7, 3, 3).
test(minimum_equal) :- minimum(4, 4, 4).
test(wrong_min, [fail]) :- minimum(1, 2, 2).
test(red_cut_counterexample) :- minimum_red(1, 2, 2).
test(abs_positive) :- absolute(5, 5).
test(abs_zero) :- absolute(0, 0).
test(abs_negative) :- absolute(-5, 5).
test(cut_keeps_first) :-
    findall(C, first_color(ball, C), Cs),
    assertion(Cs == [red]).

:- end_tests(module07).
