% Exercise 11 — higher-order predicates
:- use_module(library(apply)).
double(X,Y):-Y is X*2.
even(X):-0 is X mod 2.
add(X,A,O):-O is A+X.
% TODO: transform/3 with maplist/3.
% TODO: select_with/3 with include/3.
% TODO: sum_list_fold/2 with foldl/4.
