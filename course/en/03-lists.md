# 03 — Lists and recursive data

A non-empty Prolog list can be decomposed as `[Head|Tail]`. This makes lists a natural introduction to recursive data.

```prolog
my_member(X, [X|_]).
my_member(X, [_|Tail]) :-
    my_member(X, Tail).

my_append([], Ys, Ys).
my_append([X|Xs], Ys, [X|Zs]) :-
    my_append(Xs, Ys, Zs).
```

Try `my_append(X, Y, [a,b,c])`. Unlike a one-way append function, the relation can also enumerate every split of a list.

## Exercises

Implement length, last element, reverse, numeric sum, and a palindrome relation. Trace at least one recursive query by hand and experiment with using predicates in more than one direction.
