contains(X,node(X,_,_)).
contains(X,node(_,L,_)):-contains(X,L).
contains(X,node(_,_,R)):-contains(X,R).
tree_size(empty,0).
tree_size(node(_,L,R),N):-tree_size(L,LN),tree_size(R,RN),N is 1+LN+RN.
edge(a,b). edge(b,c). edge(c,a). edge(c,d).
path(S,G,P):-path_(S,G,[S],R),reverse(R,P).
path_(G,G,V,V).
path_(C,G,V,P):-edge(C,N),\+memberchk(N,V),path_(N,G,[N|V],P).
