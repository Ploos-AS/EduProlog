# 13 — Definite Clause Grammars (DCG)

DCG notation provides a compact way to describe sequences.

```prolog
sentence --> noun_phrase, verb_phrase.
noun_phrase --> determiner, noun.
verb_phrase --> verb, noun_phrase.
```

Use `phrase/2` to recognize a token list. Many grammars can also generate token lists.

DCG rules are translated into ordinary Prolog predicates carrying additional list-state arguments, closely related to difference lists. Ordinary Prolog goals can be embedded with braces.

## Exercises

Extend a grammar, add adjectives, build a small command grammar, generate sentences, and inspect the translated form of a DCG rule.

## Challenge

Make a grammar produce a structured result such as `move(Direction)` rather than merely succeeding.
