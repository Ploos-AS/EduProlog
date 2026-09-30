:- use_module(library(apply)).
double(X,Y):-Y is X*2.
even(X):-0 is X mod 2.
add(X,A,O):-O is A+X.
transform(P,I,O):-maplist(P,I,O).
select_with(P,I,O):-include(P,I,O).
sum_list_fold(I,S):-foldl(add,I,0,S).
