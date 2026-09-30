:- begin_tests(module06).
:- consult('../examples/06_negation.pl').

test(known_programmer) :- programmer(ada).
test(non_programmer) :- non_programmer(alan).
test(programmer_not_non_programmer, [fail]) :- non_programmer(ada).
test(unknown_bird_negates) :- \+ bird(cat).
test(non_programmers) :-
    findall(X, non_programmer(X), Xs),
    assertion(Xs == [alan]).

:- end_tests(module06).
