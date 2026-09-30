:- begin_tests(module04).
:- consult('../examples/04_arithmetic.pl').

test(square) :- square(7, 49).
test(factorial_zero) :- factorial(0, 1).
test(factorial) :- factorial(5, 120).
test(sum_to) :- sum_to(10, 55).
test(max_left) :- max2(9, 4, 9).
test(max_right) :- max2(4, 9, 9).
test(max_equal) :- max2(4, 4, 4).

:- end_tests(module04).
