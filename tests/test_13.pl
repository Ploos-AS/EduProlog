:- begin_tests(module13).
:- consult('../examples/13_dcg.pl').

test(simple_sentence) :-
    phrase(sentence, [the,cat,chases,the,mouse]).

test(adjective_sentence) :-
    phrase(sentence, [the,quick,robot,sees,the,small,cat]).

test(bad_sentence, [fail]) :-
    phrase(sentence, [cat,the,mouse]).

test(command_structure) :-
    phrase(command(Command), [move,north]),
    assertion(Command == move(north)).

test(command_object) :-
    phrase(command(Command), [take,key]),
    assertion(Command == take(key)).

test(generate_direction_words) :-
    setof(Words, D^phrase(direction(D), Words), WordLists),
    assertion(WordLists == [[east],[north],[south],[west]]).

:- end_tests(module13).
