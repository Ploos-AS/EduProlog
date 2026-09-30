last_item(X,[X]).
last_item(X,[_|Xs]):-last_item(X,Xs).
countdown(0,[0]).
countdown(N,[N|R]):-N>0,N1 is N-1,countdown(N1,R).
lookup(K,[K-V|_],V).
lookup(K,[_|R],V):-lookup(K,R,V).
