# 16 — Knowledge representation and inference

Represent explicit knowledge as facts and derived knowledge as rules.

```prolog
isa(robin, bird).
isa(bird, animal).

kind_of(X, Y) :- isa(X, Y).
kind_of(X, Y) :-
    isa(X, Z),
    kind_of(Z, Y).
```

Properties can likewise be inherited through a hierarchy. A useful inference system can return not only success but also a representation of the proof path.

Keep unknown knowledge distinct from false knowledge, especially when using negation as failure.

## Exercises

Build a hierarchy, inherit properties, return proof paths, represent an unknown fact, and create a conclusion with more than one possible proof.
