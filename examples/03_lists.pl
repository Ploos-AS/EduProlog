% EduProlog module 03 — lists

my_member(X, [X|_]).
my_member(X, [_|Tail]) :-
    my_member(X, Tail).

my_length([], 0).
my_length([_|Tail], N) :-
    my_length(Tail, N0),
    N is N0 + 1.

my_append([], Ys, Ys).
my_append([X|Xs], Ys, [X|Zs]) :-
    my_append(Xs, Ys, Zs).

my_reverse([], []).
my_reverse([X|Xs], Reversed) :-
    my_reverse(Xs, TailReversed),
    my_append(TailReversed, [X], Reversed).

my_sum([], 0).
my_sum([X|Xs], Sum) :-
    my_sum(Xs, Rest),
    Sum is X + Rest.

palindrome(Xs) :-
    my_reverse(Xs, Xs).
