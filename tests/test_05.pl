:- begin_tests(module05).
:- consult('../examples/05_search.pl').

test(red_fruits) :-
    findall(X, color(X, red), Xs),
    assertion(Xs == [apple,cherry]).

test(even_candidates) :-
    findall(X, even_candidate(X), Xs),
    assertion(Xs == [2,4]).

test(route_choices) :-
    findall(X, route(a, X), Xs),
    assertion(Xs == [b,c]).

test(two_paths) :-
    findall(X, two_step(a, X), Xs),
    assertion(Xs == [d,d]).

:- end_tests(module05).
