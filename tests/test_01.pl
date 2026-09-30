:- begin_tests(module01).
:- consult('../examples/01_unification.pl').

test(person_fact) :-
    person(ada, programmer).

test(extract_role) :-
    person(ada, Role),
    assertion(Role == programmer).

test(same_pair_accepts) :-
    same_pair(pair(a, a)).

test(same_pair_rejects, [fail]) :-
    same_pair(pair(a, b)).

test(book_query) :-
    book(the_hobbit, Author, Year),
    assertion(Author == tolkien),
    assertion(Year == 1937).

:- end_tests(module01).
