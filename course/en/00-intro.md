# EduProlog — Introduction

Prolog is a logic programming language. Instead of primarily describing *how* a computation should be performed, we describe facts, relations, and rules — and ask questions of the program.

## First goals

After this module you should be able to:

- start SWI-Prolog;
- write simple facts;
- ask queries;
- use variables;
- understand the first idea behind unification and backtracking.

## First knowledge base

Create `family.pl`:

```prolog
parent(anna, ola).
parent(anna, kari).
parent(ola, liv).
```

Load the file:

```prolog
?- [family].
```

Ask questions:

```prolog
?- parent(anna, ola).
true.

?- parent(anna, X).
X = ola ;
X = kari.
```

The semicolon asks Prolog to search for another solution. This is your first encounter with backtracking.

## A rule

```prolog
grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).
```

Now we can ask:

```prolog
?- grandparent(anna, Who).
Who = liv.
```

## Think in relations

`parent(X, Y)` is not a function returning one value. It describes a relation between two arguments, so it can be used in several directions.

```prolog
?- parent(Who, liv).
Who = ola.
```

This way of thinking is central throughout the course.

## Exercises

1. Add five people and at least six `parent/2` facts.
2. Find all children of one person.
3. Find the parent of one specific person.
4. Create a `sibling/2` rule.
5. Investigate why a naive `sibling/2` rule may claim that a person is their own sibling.

## Next

The next module goes deeper into terms, variables, and unification.
