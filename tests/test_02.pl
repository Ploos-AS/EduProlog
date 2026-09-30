:- begin_tests(module02).
:- consult('../examples/02_recursion.pl').

test(grandparent) :-
    grandparent(anna, liv).

test(siblings) :-
    sibling(ola, kari),
    sibling(kari, ola).

test(not_own_sibling, [fail]) :-
    sibling(ola, ola).

test(deep_descendant) :-
    descendant(mia, anna).

test(ancestor_reverse_view) :-
    ancestor(anna, mia).

test(reachable_direct) :-
    reachable(a, b).

test(reachable_deep) :-
    reachable(a, d).

test(unreachable, [fail]) :-
    reachable(d, a).

test(all_descendants) :-
    setof(X, descendant(X, anna), Xs),
    assertion(Xs == [kari,liv,mia,ola,per]).

:- end_tests(module02).
