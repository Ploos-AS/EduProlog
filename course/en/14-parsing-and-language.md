# 14 — Parsing and simple language processing

## Goals

Use a DCG to translate tokens into structured meaning and separate syntax from semantics.

## From words to structure

```prolog
command(move(Direction)) -->
    [move],
    direction(Direction).
```

Then:

```prolog
?- phrase(command(AST), [move,north]).
AST = move(north).
```

The rest of the program can operate on the term without knowing the original wording.

## A tiny query language

The tokens for `show red objects` can become:

```prolog
query(objects, color(red))
```

The grammar handles syntax; a separate evaluator interprets the structure against a knowledge base.

## Tokenization

Real input often begins as text rather than atoms. Keep tokenization as a separate layer so the grammar remains simple and testable.

## Exercises

1. Extend commands with more directions.
2. Parse `show red objects` into a structure.
3. Evaluate that structure against facts.
4. Test rejection of an invalid command.
5. Generate tokens from a semantic term where possible.

## Challenge

Build a command language with at least three command forms and separate parse and execute predicates.

## Think

Why is it useful for a parser to produce data rather than immediately performing an action?
