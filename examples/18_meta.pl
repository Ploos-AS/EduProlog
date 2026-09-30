% EduProlog module 18 — a deliberately small meta-interpreter

rule(parent(anna, ola), true).
rule(parent(ola, liv), true).
rule(grandparent(X, Z), (parent(X, Y), parent(Y, Z))).

solve(true).
solve((A, B)) :-
    solve(A),
    solve(B).
solve(Goal) :-
    rule(Goal, Body),
    solve(Body).

prove(true, true).
prove((A, B), and(PA, PB)) :-
    prove(A, PA),
    prove(B, PB).
prove(Goal, because(Goal, Proof)) :-
    rule(Goal, Body),
    prove(Body, Proof).

run(Goal) :-
    call(Goal).

ordinary_fact(works).
