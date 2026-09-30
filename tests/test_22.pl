:- begin_tests(module22).
:- consult('../examples/22_capstone.pl').

test(parse_where) :-
    phrase(query(where(key)), [where,is,key]).

test(where_answer) :-
    ask([where,is,key], at(key,lab), because(location(key,lab))).

test(contents_multiple) :-
    setof(Item, Why^ask([what,is,in,library], item(Item), Why), Items),
    assertion(Items == [book,note]).

test(permission_yes) :-
    ask([can,robot,enter,lab], yes, because(allowed(robot,lab))).

test(permission_no) :-
    ask([can,robot,enter,kitchen], no,
        because(no_permission(robot,kitchen))).

test(reachable_recursive) :-
    reachable(hall, workshop).

test(unreachable, [fail]) :-
    reachable(kitchen, hall).

test(bad_command, [fail]) :-
    ask([dance,robot], _, _).

:- end_tests(module22).
