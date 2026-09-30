isa(robin,bird). isa(bird,animal).
property(bird,has_wings). property(animal,needs_food).
kind_of(X,Y):-isa(X,Y).
kind_of(X,Y):-isa(X,Z),kind_of(Z,Y).
has_property(X,P):-property(X,P).
has_property(X,P):-isa(X,Z),has_property(Z,P).
proof_kind(X,Y,[isa(X,Y)]):-isa(X,Y).
proof_kind(X,Y,[isa(X,Z)|R]):-isa(X,Z),proof_kind(Z,Y,R).
