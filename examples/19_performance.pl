% EduProlog module 19 — termination and deterministic search

person(ada, active).
person(grace, inactive).
person(alan, active).
person(barbara, active).

skill(ada, logic).
skill(grace, compilers).
skill(alan, logic).
skill(barbara, hardware).

active_with_skill(Person, Skill) :-
    person(Person, active),
    skill(Person, Skill).

edge(a, b).
edge(b, c).
edge(c, a).
edge(c, d).

safe_path(Start, Goal, Path) :-
    safe_path_(Start, Goal, [Start], Rev),
    reverse(Rev, Path).

safe_path_(Goal, Goal, Seen, Seen).
safe_path_(Current, Goal, Seen, Path) :-
    edge(Current, Next),
    \+ memberchk(Next, Seen),
    safe_path_(Next, Goal, [Next|Seen], Path).

first_active(Person) :-
    once(person(Person, active)).
