square(X,Y):-Y is X*X.
color(ball,red). color(ball,blue).
:- begin_tests(exercise09).
test(square):-square(5,25).
test(wrong,[fail]):-square(5,24).
test(binding):-square(4,X),assertion(X==16).
test(colors):-findall(C,color(ball,C),Cs),assertion(Cs==[red,blue]).
:- end_tests(exercise09).
