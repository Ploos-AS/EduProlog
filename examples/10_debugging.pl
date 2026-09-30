% EduProlog module 10 — small predicates for debugging practice

last_item(X, [X]).
last_item(X, [_|Xs]) :-
    last_item(X, Xs).

countdown(0, [0]).
countdown(N, [N|Rest]) :-
    N > 0,
    N1 is N - 1,
    countdown(N1, Rest).

lookup(Key, [Key-Value|_], Value).
lookup(Key, [_|Rest], Value) :-
    lookup(Key, Rest, Value).
