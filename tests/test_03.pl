:- begin_tests(module03).
:- consult('../examples/03_lists.pl').

test(member) :- my_member(c, [a,b,c]).
test(nonmember, [fail]) :- my_member(x, [a,b,c]).
test(length) :- my_length([a,b,c,d], 4).
test(append) :- my_append([a,b], [c,d], [a,b,c,d]).
test(splits) :-
    findall(X-Y, my_append(X,Y,[a,b]), Splits),
    assertion(Splits == [[]-[a,b],[a]-[b],[a,b]-[]]).
test(reverse) :- my_reverse([a,b,c], [c,b,a]).
test(sum) :- my_sum([1,2,3,4], 10).
test(palindrome) :- palindrome([r,a,d,a,r]).
test(not_palindrome, [fail]) :- palindrome([a,b,c]).

:- end_tests(module03).
