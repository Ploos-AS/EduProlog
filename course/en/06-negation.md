# 06 — Negation as failure

Prolog's `\+/1` succeeds when its goal cannot be proven.

```prolog
bird(robin).
bird(sparrow).

?- \+ bird(cat).
true.
```

This is *negation as failure*, not a proof of classical logical negation.

Be especially careful with free variables. `\+ bird(X)` does not enumerate everything that is not a bird. A useful rule is to apply negation after the relevant variables have been sufficiently instantiated.

## Exercises

Experiment with negation over bound and unbound variables. Build a small filtering relation and explain one situation where missing knowledge should not be interpreted as false.
