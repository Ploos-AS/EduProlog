:- begin_tests(module14).
:- consult('../examples/14_parser.pl').

test(parse_move) :-
    phrase(command(AST), [move,west]),
    assertion(AST == move(west)).

test(parse_look) :-
    phrase(command(look), [look]).

test(reject_bad_direction, [fail]) :-
    phrase(command(_), [move,up]).

test(parse_query) :-
    phrase(query(AST), [show,red,objects]),
    assertion(AST == query(objects,color(red))).

test(evaluate_query) :-
    phrase(query(AST), [show,red,objects]),
    evaluate(AST, Objects),
    assertion(Objects == [ball,book]).

test(generate_command) :-
    phrase(command(move(north)), Tokens),
    assertion(Tokens == [move,north]).

:- end_tests(module14).
