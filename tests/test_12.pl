:- begin_tests(module12).
:- consult('../examples/12_search.pl').

test(tree_contains) :-
    tree(T),
    contains(14, T).

test(tree_missing, [fail]) :-
    tree(T),
    contains(99, T).

test(tree_size) :-
    tree(T),
    tree_size(T, 6).

test(cycle_safe_path) :-
    path(a, d, P),
    assertion(member(P, [[a,b,d],[a,e,d]])).

test(all_simple_paths) :-
    setof(P, path(a,d,P), Ps),
    assertion(Ps == [[a,b,d],[a,e,d]]).

test(no_path, [fail]) :-
    path(d, a, _).

:- end_tests(module12).
