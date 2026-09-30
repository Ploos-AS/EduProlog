:- begin_tests(module15).
:- consult('../examples/15_clpfd.pl').

test(pair_solutions) :-
    findall(X-Y, solve_pair(X,Y), Pairs),
    assertion(Pairs == [1-9,2-8,3-7,4-6]).

test(relational_next_forward) :-
    next_integer(4, Y),
    assertion(Y #= 5).

test(relational_next_backward) :-
    next_integer(X, 5),
    assertion(X #= 4).

test(triple_example) :-
    triple_sum_15(1,5,9).

test(triple_distinct, [fail]) :-
    triple_sum_15(5,5,5).

:- end_tests(module15).
