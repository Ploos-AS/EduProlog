:- begin_tests(module16).
:- consult('../examples/16_knowledge.pl').

test(direct_classification) :- kind_of(robin, bird).
test(transitive_classification) :- kind_of(robin, animal).
test(inherited_property) :- has_property(robin, needs_food).
test(class_property) :- has_property(robin, has_wings).
test(unrelated_property, [fail]) :- has_property(robin, warm_blooded).
test(proof_chain) :-
    proof_kind(robin, animal, Proof),
    assertion(Proof == [isa(robin,bird),isa(bird,animal)]).

:- end_tests(module16).
