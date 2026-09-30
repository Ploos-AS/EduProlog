minimum(A,B,A):-A=<B,!.
minimum(_,B,B).
absolute(X,A):-(X>=0->A is X;A is -X).
color(ball,red). color(ball,blue).
first_color(I,C):-color(I,C),!.
