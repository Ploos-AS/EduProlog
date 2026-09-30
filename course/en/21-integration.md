# 21 — Integrating Prolog with other systems

## Goals

Design a clear boundary between Prolog and another program without mixing transport, parsing and domain logic.

## Prolog as a component

Another program does not need to understand the whole knowledge base. It can send a request and receive a structured response.

```prolog
request(square, 7).
response(ok, 49).
```

Production systems may choose different formats and transports; the architectural principle remains the same.

## Layers

Keep these separate:

1. transport/I/O;
2. parsing and validation;
3. domain logic;
4. response serialization.

Then domain logic can be tested without networks or subprocesses.

## A request predicate

```prolog
handle(request(square, X), response(ok, Y)) :-
    number(X),
    Y is X * X.
```

Unknown operations can return an explicit error value instead of crashing the protocol.

## Exercises

1. Add another request type.
2. Test invalid input.
3. Keep `handle/2` independent of stdin/stdout.
4. Write a driver that reads one term and writes one response.
5. Explain how the same domain core could sit behind HTTP, a subprocess or a local application.

## Think

How does a stable data format and small interface let you replace transport without rewriting inference logic?
