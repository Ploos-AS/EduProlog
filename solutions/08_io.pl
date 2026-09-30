greeting(Name,Text):-format(string(Text),'Hello, ~w!',[Name]).
write_term_file(File,Term):-
 setup_call_cleanup(open(File,write,S),
   write_term(S,Term,[quoted(true),fullstop(true),nl(true)]),
   close(S)).
read_one_term(File,Term):-
 setup_call_cleanup(open(File,read,S),read_term(S,Term,[]),close(S)).
