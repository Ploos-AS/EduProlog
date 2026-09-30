% EduProlog module 21 — transport-independent request handling

handle(request(square, X), response(ok, Y)) :-
    number(X),
    !,
    Y is X * X.
handle(request(member, X, List), response(ok, Result)) :-
    is_list(List),
    !,
    ( memberchk(X, List) -> Result = true ; Result = false ).
handle(Request, response(error, unsupported(Request))).

process_one(Input, Output) :-
    handle(Input, Output).
