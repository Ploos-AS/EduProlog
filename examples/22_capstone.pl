% EduProlog module 22 — compact capstone reference example

location(key, lab).
location(robot, hall).
location(book, library).
location(toolbox, workshop).
location(battery, workshop).
location(map, hall).
location(sensor, lab).
location(cup, kitchen).
location(chair, kitchen).
location(note, library).

connected(hall, lab).
connected(lab, workshop).
connected(hall, library).
connected(library, kitchen).

allowed(robot, hall).
allowed(robot, lab).
allowed(robot, workshop).
allowed(robot, library).

query(where(Item)) --> [where,is,Item].
query(contents(Place)) --> [what,is,in,Place].
query(can_enter(Actor, Place)) --> [can,Actor,enter,Place].

reachable(A, B) :-
    reachable_(A, B, [A]).

reachable_(A, B, _) :-
    connected(A, B).
reachable_(A, B, Seen) :-
    connected(A, C),
    \+ memberchk(C, Seen),
    reachable_(C, B, [C|Seen]).

answer(where(Item), at(Item, Place), because(location(Item,Place))) :-
    location(Item, Place).

answer(contents(Place), item(Item), because(location(Item,Place))) :-
    location(Item, Place).

answer(can_enter(Actor, Place), yes,
       because(allowed(Actor,Place))) :-
    allowed(Actor, Place).

answer(can_enter(Actor, Place), no,
       because(no_permission(Actor,Place))) :-
    \+ allowed(Actor, Place).

ask(Tokens, Answer, Why) :-
    phrase(query(Query), Tokens),
    answer(Query, Answer, Why).
