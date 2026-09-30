:- begin_tests(module18).
:- consult('../examples/18_meta.pl').

test(meta_fact) :- solve(parent(anna, ola)).
test(meta_rule) :- solve(grandparent(anna, liv)).
test(meta_failure, [fail]) :- solve(grandparent(ola, anna)).

test(proof_tree) :-
    prove(grandparent(anna, liv), Proof),
    assertion(Proof ==
        because(grandparent(anna,liv),
            and(
                because(parent(anna,ola),true),
                because(parent(ola,liv),true)))).

test(call_goal) :-
    run(ordinary_fact(works)).

:- end_tests(module18).
