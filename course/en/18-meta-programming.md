# 18 — Meta-programming and interpreters

Prolog goals are terms and can therefore be constructed, inspected and invoked with `call/1`.

A small meta-interpreter can make proof execution explicit:

```prolog
solve(true).
solve((A,B)) :- solve(A), solve(B).
solve(Goal) :- rule(Goal, Body), solve(Body).
```

For teaching, keep the interpreted knowledge in an explicit `rule/2` representation rather than attempting to interpret all of Prolog.

Extend the interpreter to return proof data and compare it with the explanation structures from earlier modules. Meta-programming is powerful, but it should serve a clear abstraction rather than obscure ordinary control flow.
