# 09 — Testing with plunit

SWI-Prolog includes the `plunit` testing framework.

```prolog
:- begin_tests(math).

test(addition) :-
    assertion(2 + 2 =:= 4).

test(not_member, [fail]) :-
    member(x, [a,b,c]).

:- end_tests(math).
```

Run tests with `run_tests.`.

Tests should cover successful queries, expected failures, bindings, multiple solutions, base cases and recursive cases. Use `findall/3` when answer order matters and `setof/3` when you want a canonical set of solutions.

## Exercises

Write success and failure tests, test variable bindings and multiple answers, and create a regression test for a bug you intentionally introduce and then fix.

## Think

Tests are executable documentation: they state which behavior the programmer considers part of a predicate's contract.
