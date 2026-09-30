% EduProlog module 11 — higher-order predicates

:- use_module(library(apply)).

double(X, Y) :-
    Y is X * 2.

square(X, Y) :-
    Y is X * X.

positive(X) :-
    X > 0.

even(X) :-
    0 is X mod 2.

add(X, Acc, Out) :-
    Out is Acc + X.

transform(Predicate, Input, Output) :-
    maplist(Predicate, Input, Output).

select_with(Predicate, Input, Output) :-
    include(Predicate, Input, Output).

sum_list_fold(Input, Sum) :-
    foldl(add, Input, 0, Sum).
