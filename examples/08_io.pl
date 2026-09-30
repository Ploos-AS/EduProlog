% EduProlog module 08 — simple stream I/O

:- use_module(greetings).

write_term_file(File, Term) :-
    setup_call_cleanup(
        open(File, write, Stream),
        write_term(Stream, Term, [quoted(true), fullstop(true), nl(true)]),
        close(Stream)
    ).

read_one_term(File, Term) :-
    setup_call_cleanup(
        open(File, read, Stream),
        read_term(Stream, Term, []),
        close(Stream)
    ).
