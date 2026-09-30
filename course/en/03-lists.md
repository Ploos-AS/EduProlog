# 03 — Lists and recursive data

## Goals

Understand the `[Head|Tail]` form, the empty list, recursive list processing, and why the same ideas generalize to other recursive structures.

## Lists as structure

```prolog
[a, b, c]
[a | [b, c]]
```

These denote the same list. A non-empty list has a head and a tail.

```prolog
?- [H|T] = [a,b,c].
H = a,
T = [b,c].
```

## Membership

```prolog
my_member(X, [X|_]).
my_member(X, [_|Tail]) :-
    my_member(X, Tail).
```

The first clause succeeds when the head matches. Otherwise the search continues recursively through the tail.

## Length

```prolog
my_length([], 0).
my_length([_|Tail], N) :-
    my_length(Tail, N0),
    N is N0 + 1.
```

## Appending lists

```prolog
my_append([], Ys, Ys).
my_append([X|Xs], Ys, [X|Zs]) :-
    my_append(Xs, Ys, Zs).
```

This is a relation. Try:

```prolog
?- my_append(X, Y, [a,b,c]).
```

Prolog can enumerate every way to split the list.

## Exercises

1. Trace `my_member(c, [a,b,c])` by hand.
2. Implement `my_last/2`.
3. Implement `my_reverse/2`.
4. Use `my_append/3` to split `[1,2,3]` at every possible position.
5. Write a predicate that sums a numeric list.

## Challenge

Implement `palindrome/1` using relations you already have.

## Think

Why is `append/3` more general than a function that can only append list B after list A?
