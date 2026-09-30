# 09 — Testing with plunit

## Goals

Write automated Prolog tests using SWI-Prolog's `plunit`.

## A simple test

```prolog
:- begin_tests(math).

test(addition) :-
    assertion(2 + 2 =:= 4).

:- end_tests(math).
```

Run it with `run_tests.`.

## Expected failure

```prolog
test(not_member, [fail]) :-
    member(x, [a,b,c]).
```

The test succeeds when the goal correctly fails.

## Test values explicitly

```prolog
test(answer) :-
    square(5, X),
    assertion(X == 25).
```

## Multiple solutions

```prolog
test(colors) :-
    findall(C, color(ball, C), Cs),
    assertion(Cs == [red,blue]).
```

If order is not part of the contract, `setof/3` may be more appropriate.

## Test success and failure

Tests should document valid behavior and rejected cases. Recursive predicates deserve tests for both base and deeper cases.

## Exercises

1. Write a successful test.
2. Write a `[fail]` test.
3. Test a variable binding.
4. Test all answers from a nondeterministic predicate.
5. Add a regression test for a bug you deliberately introduce and fix.

## Challenge

Choose an earlier predicate and cover its base case, normal case, boundary case and expected failure.

## Think

A test suite is executable documentation. What does it tell a future reader about the intended meaning of a predicate?
