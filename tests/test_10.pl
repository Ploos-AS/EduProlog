:- begin_tests(module10).
:- consult('../examples/10_debugging.pl').

test(last_item) :- last_item(c, [a,b,c]).
test(countdown) :- countdown(3, [3,2,1,0]).
test(lookup_first) :- lookup(a, [a-1,b-2], 1).
test(lookup_later) :- lookup(b, [a-1,b-2], 2).
test(lookup_missing, [fail]) :- lookup(c, [a-1,b-2], _).

:- end_tests(module10).
