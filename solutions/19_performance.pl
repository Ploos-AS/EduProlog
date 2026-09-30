edge(a,b). edge(b,c). edge(c,a). edge(c,d).
safe_path(S,G,P):-safe_path_(S,G,[S],R),reverse(R,P).
safe_path_(G,G,V,V).
safe_path_(C,G,V,P):-edge(C,N),\+memberchk(N,V),safe_path_(N,G,[N|V],P).
