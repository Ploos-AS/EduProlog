:- begin_tests(module08).
:- consult('../examples/08_io.pl').

test(module_greeting) :-
    greeting(ada, Text),
    assertion(Text == "Hello, ada!").

test(module_classification) :-
    classify(-2, negative),
    classify(0, zero),
    classify(9, positive).

test(file_roundtrip,
     [ setup(tmp_file_stream(text, File, Stream)),
       cleanup((close(Stream), delete_file(File)))
     ]) :-
    write_term_file(File, person(ada, programmer)),
    read_one_term(File, Term),
    assertion(Term == person(ada, programmer)).

:- end_tests(module08).
