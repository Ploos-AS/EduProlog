# 01 — Terms and unification

## Goals

After this module you should be able to read Prolog terms, distinguish atoms, numbers, variables and compound terms, and explain unification.

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

Variables normally start with an uppercase letter or underscore.

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

This is not ordinary assignment. Prolog finds bindings that make both terms the same.

## Exercises

Predict the results of several unifications, create your own compound terms, and represent a book as `book(Title, Author, Year)`. Explain why unification differs from assignment in languages such as C or Python.
