:- begin_tests(module20).
:- consult('../examples/20_portable.pl').

test(member) :- my_member(b, [a,b,c]).
test(append) :- my_append([a,b], [c], [a,b,c]).
test(sum) :- portable_sum([1,2,3,4], 10).

:- end_tests(module20).
