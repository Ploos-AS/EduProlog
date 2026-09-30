handle(request(square,X),response(ok,Y)):-
 number(X),!,Y is X*X.
handle(request(member,X,L),response(ok,R)):-
 is_list(L),!,(memberchk(X,L)->R=true;R=false).
handle(Q,response(error,unsupported(Q))).
