# 08 — Modules and I/O

## Goals

Split a Prolog program into modules, export a public interface, and read and write simple terms and text streams.

## Modules

```prolog
:- module(greetings, [greeting/2]).

greeting(Name, Text) :-
    format(string(Text), 'Hello, ~w!', [Name]).
```

Another file can import it with `use_module/1`. Modules make dependencies explicit and reduce name collisions.

## Writing data

`format/2` and `format/3` provide controlled output:

```prolog
?- format('Answer: ~w~n', [42]).
Answer: 42
```

Formatting into a string is particularly testable:

```prolog
format(string(S), 'Hello, ~w!', [ada]).
```

## Streams

Use `setup_call_cleanup/3` when a resource must be closed even if processing fails.

```prolog
read_one_term(File, Term) :-
    setup_call_cleanup(
        open(File, read, Stream),
        read_term(Stream, Term, []),
        close(Stream)
    ).
```

## Exercises

1. Create a module exporting two predicates.
2. Import it from another file.
3. Format a greeting into a string.
4. Write a term to a file and read it back.
5. Explain why stream cleanup must happen on failure too.

## Challenge

Build a small persistence module while keeping domain logic independent of I/O.

## Think

Why is a small explicit module interface easier to test and maintain than a large collection of global predicates?
