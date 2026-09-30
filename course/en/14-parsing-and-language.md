# 14 — Parsing and simple language processing

Use a DCG to translate tokens into a semantic term rather than merely accepting input.

```prolog
command(move(Direction)) --> [move], direction(Direction).
```

Then `phrase(command(AST), [move,north])` produces `move(north)`.

Keep parsing separate from execution. The parser describes syntax and builds data; another predicate interprets that data against the application's domain. Tokenization should likewise remain a separate layer.

## Exercises

Extend a command language, parse a small query into a term, evaluate it against facts, test invalid input, and try generating tokens from semantic structures.
