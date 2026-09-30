% EduProlog module 04 — arithmetic and comparison

square(X, Y) :-
    Y is X * X.

factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

sum_to(0, 0).
sum_to(N, Sum) :-
    N > 0,
    N1 is N - 1,
    sum_to(N1, Rest),
    Sum is N + Rest.

max2(A, B, A) :-
    A >= B.
max2(A, B, B) :-
    B > A.
