# 21 — Integrating Prolog with other systems

Treat Prolog as a component behind a small structured interface. Keep transport, parsing/validation, domain logic and response serialization separate.

For teaching, Prolog terms make a convenient local protocol:

```prolog
request(square, 7).
response(ok, 49).
```

A pure `handle/2` predicate can be tested without networking or subprocess management. The same domain core can later sit behind another transport or data format.
