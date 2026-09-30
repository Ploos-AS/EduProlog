# 01 — Terms and unification

## Goals

After this module you should be able to read Prolog terms, distinguish atoms, numbers, variables and compound terms, and explain what unification does.

## Terms

Prolog works with terms.

```prolog
ada
42
X
person(ada, programmer)
point(10, 20)
```

`ada` is an atom, `42` is a number, `X` is a variable, and `person(ada, programmer)` is a compound term.

Variables normally begin with an uppercase letter or an underscore.

## Unification

The `=` operator asks Prolog to make two terms identical if possible.

```prolog
?- X = ada.
X = ada.

?- person(Name, Role) = person(ada, programmer).
Name = ada,
Role = programmer.

?- point(X, X) = point(10, 20).
false.
```

This is not ordinary assignment as found in imperative languages. Prolog finds bindings that make both sides the same term.

## Structure matters

```prolog
?- pair(X, Y) = pair(left, right).
X = left,
Y = right.

?- pair(X, Y) = point(left, right).
false.
```

The functor name and arity must match.

## The anonymous variable

Use `_` when a value is irrelevant.

```prolog
person(ada, programmer).
person(grace, mathematician).

programmer(Name) :-
    person(Name, _).
```

## Exercises

1. Predict the result of `X = hello`.
2. Predict `pair(X, X) = pair(a, a)`.
3. Predict `pair(X, X) = pair(a, b)`.
4. Create three compound terms of your own.
5. Explain why unification is not assignment as in C or Python.

## Challenge

Represent a book as `book(Title, Author, Year)`. Create three book terms and use variables in queries to extract their fields.
