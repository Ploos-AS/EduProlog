% EduProlog module 20 — intentionally small portable-style core

my_member(X, [X|_]).
my_member(X, [_|Xs]) :-
    my_member(X, Xs).

my_append([], Ys, Ys).
my_append([X|Xs], Ys, [X|Zs]) :-
    my_append(Xs, Ys, Zs).

portable_sum([], 0).
portable_sum([X|Xs], Sum) :-
    portable_sum(Xs, Rest),
    Sum is X + Rest.
