# 18 — Meta-programming and interpreters

## Goals

Understand that Prolog can represent and manipulate goals as data, use `call/1`, inspect program structure, and build a small meta-interpreter.

## Goals as data

```prolog
Goal = parent(anna, ola),
call(Goal).
```

The goal is constructed as an ordinary term before execution.

## A minimal interpreter

```prolog
solve(true).
solve((A,B)) :-
    solve(A),
    solve(B).
solve(Goal) :-
    rule(Goal, Body),
    solve(Body).
```

For teaching, knowledge is represented explicitly with `rule/2`; the example does not attempt to interpret the entire host Prolog system.

## Proof trees

Extend the interpreter to return a structure recording which rules were used. This connects directly to explainable inference from modules 16–17.

## Meta means responsibility

`call/1`, `clause/2` and term inspection are powerful but can make programs harder to analyze, test and port. Use meta-programming for a real abstraction need.

## Exercises

1. Invoke a goal stored in a variable with `call/1`.
2. Extend the mini-interpreter with another rule.
3. Return a structured proof.
4. Compare direct execution with `solve/1`.
5. Identify Prolog constructs the minimal interpreter does not support.

## Challenge

Add a controlled `or(A,B)` construct to the object language without storing Prolog's `;/2` in the knowledge base.

## Think

When a program can treat its own goals as data, where is the boundary between program and interpreter?
