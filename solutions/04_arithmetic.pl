square(X,Y):-Y is X*X.
factorial(0,1).
factorial(N,F):-N>0,N1 is N-1,factorial(N1,F1),F is N*F1.
sum_to(0,0).
sum_to(N,S):-N>0,N1 is N-1,sum_to(N1,R),S is N+R.
max2(A,B,A):-A>=B.
max2(A,B,B):-B>A.
