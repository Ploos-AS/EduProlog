# 13 — Definite Clause Grammars (DCG)

## Goals

Read and write a simple DCG, use `phrase/2`, and understand the connection between grammar rules and Prolog predicates.

## A small grammar

```prolog
sentence --> noun_phrase, verb_phrase.
noun_phrase --> determiner, noun.
verb_phrase --> verb, noun_phrase.

determiner --> [the].
noun --> [cat].
noun --> [mouse].
verb --> [chases].
```

```prolog
?- phrase(sentence, [the,cat,chases,the,mouse]).
true.
```

## A DCG is Prolog

DCG notation is translated into ordinary predicates with extra arguments representing the remaining token list, closely related to difference lists.

Ordinary Prolog goals can be embedded with braces:

```prolog
number(N) --> [N], { number(N) }.
```

## Generation

Many grammars work in both directions:

```prolog
?- phrase(sentence, Words).
```

Prolog can then generate accepted sentences.

## Exercises

1. Add nouns and verbs.
2. Add adjectives.
3. Build a grammar for a simple command.
4. Generate sentences with `phrase/2`.
5. Inspect DCG expansion with `listing/1` or `expand_term/2`.

## Challenge

Produce a structure such as `move(Direction)` instead of merely accepting words.

## Think

Why is a relational grammar useful when both parsing and generation matter?
