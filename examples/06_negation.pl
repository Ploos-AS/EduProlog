% EduProlog module 06 — negation as failure

person(ada).
person(grace).
person(alan).

programmer(ada).
programmer(grace).

non_programmer(X) :-
    person(X),
    \+ programmer(X).

bird(robin).
bird(sparrow).
