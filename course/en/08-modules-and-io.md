# 08 — Modules and I/O

A Prolog file can declare a public interface:

```prolog
:- module(greetings, [greeting/2]).

greeting(Name, Text) :-
    format(string(Text), 'Hello, ~w!', [Name]).
```

Modules make dependencies explicit and help prevent name collisions.

Use `format/2` and `format/3` for controlled output. Formatting to a string is particularly useful in tests because it avoids interactive terminal I/O.

For files and other streams, `setup_call_cleanup/3` ensures cleanup even when a goal fails or raises an exception.

## Exercises

Create and import a module, format text into a string, write and read a Prolog term, and explain why resource cleanup matters.
