:- use_module(library(clpfd)).
pair_sum_10(X,Y):-[X,Y] ins 1..9,X+Y#=10,X#<Y.
triple_sum_15(A,B,C):-[A,B,C] ins 1..9,all_distinct([A,B,C]),A+B+C#=15.
next_integer(X,Y):-Y#=X+1.
solve_pair(X,Y):-pair_sum_10(X,Y),labeling([],[X,Y]).
