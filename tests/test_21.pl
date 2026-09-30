:- begin_tests(module21).
:- consult('../examples/21_integration.pl').

test(square_request) :-
    handle(request(square, 7), response(ok, 49)).

test(member_true) :-
    handle(request(member, b, [a,b,c]), response(ok, true)).

test(member_false) :-
    handle(request(member, x, [a,b,c]), response(ok, false)).

test(unsupported) :-
    handle(request(unknown, 1), Response),
    assertion(Response == response(error,unsupported(request(unknown,1)))).

test(invalid_square_is_error) :-
    handle(request(square, nope), Response),
    assertion(Response == response(error,unsupported(request(square,nope)))).

:- end_tests(module21).
