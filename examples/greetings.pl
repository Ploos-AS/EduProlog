:- module(greetings, [greeting/2, classify/2]).

greeting(Name, Text) :-
    format(string(Text), 'Hello, ~w!', [Name]).

classify(N, negative) :- N < 0, !.
classify(0, zero) :- !.
classify(_, positive).
