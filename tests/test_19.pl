:- begin_tests(module19).
:- consult('../examples/19_performance.pl').

test(filtered_relation) :-
    setof(P, active_with_skill(P, logic), Ps),
    assertion(Ps == [ada,alan]).

test(cycle_safe) :-
    safe_path(a, d, [a,b,c,d]).

test(no_reverse_path, [fail]) :-
    safe_path(d, a, _).

test(first_active_is_deterministic) :-
    findall(P, first_active(P), Ps),
    assertion(Ps == [ada]).

:- end_tests(module19).
