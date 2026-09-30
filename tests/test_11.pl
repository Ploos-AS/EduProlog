:- begin_tests(module11).
:- consult('../examples/11_higher_order.pl').

test(map_double) :-
    transform(double, [1,2,3], Ys),
    assertion(Ys == [2,4,6]).

test(map_square) :-
    transform(square, [2,3,4], Ys),
    assertion(Ys == [4,9,16]).

test(include_positive) :-
    select_with(positive, [-2,3,0,5], Ys),
    assertion(Ys == [3,5]).

test(include_even) :-
    select_with(even, [1,2,3,4], Ys),
    assertion(Ys == [2,4]).

test(fold_sum) :-
    sum_list_fold([1,2,3,4], 10).

:- end_tests(module11).
