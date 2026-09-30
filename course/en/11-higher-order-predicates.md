# 11 — Higher-order predicates and library patterns

Prolog can pass callable goals as arguments. `call/N` is the foundation, while common library predicates provide useful abstractions.

```prolog
double(X, Y) :- Y is X * 2.
positive(X) :- X > 0.
add(X, Acc, Out) :- Out is Acc + X.
```

Use `maplist/3` to transform lists, `include/3` to filter them, and `foldl/4` to accumulate a result.

These abstractions are valuable when they clarify intent. Compare them with the explicit recursive versions you learned earlier rather than treating shorter code as automatically better.
