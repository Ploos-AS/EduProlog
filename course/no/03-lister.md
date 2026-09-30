# 03 — Lister og rekursive datastrukturer

## Mål

Du skal forstå listeformen `[Head|Tail]`, tom liste, rekursiv behandling av lister og hvorfor de samme ideene senere kan brukes på trær.

## Listen som struktur

```prolog
[a, b, c]
[a | [b, c]]
```

er to skrivemåter for samme liste. En ikke-tom liste kan deles i første element og resten.

```prolog
?- [H|T] = [a,b,c].
H = a,
T = [b,c].
```

## Medlemskap

```prolog
my_member(X, [X|_]).
my_member(X, [_|Tail]) :-
    my_member(X, Tail).
```

Første regel sier at `X` finnes dersom det er hodet. Ellers leter vi i halen.

## Lengde

```prolog
my_length([], 0).
my_length([_|Tail], N) :-
    my_length(Tail, N0),
    N is N0 + 1.
```

## Slå sammen lister

```prolog
my_append([], Ys, Ys).
my_append([X|Xs], Ys, [X|Zs]) :-
    my_append(Xs, Ys, Zs).
```

Legg merke til at dette er en relasjon. Prøv:

```prolog
?- my_append(X, Y, [a,b,c]).
```

Prolog kan finne alle måtene listen kan deles på.

## Oppgaver

1. Spor `my_member(c, [a,b,c])` for hånd.
2. Implementer `my_last/2`.
3. Implementer `my_reverse/2`.
4. Bruk `my_append/3` til å dele `[1,2,3]` på alle mulige steder.
5. Skriv et predikat som summerer en liste med tall.

## Utfordring

Skriv `palindrome/1` ved hjelp av relasjonene du allerede har.

## Tenk

Hvorfor er `append/3` mer generell enn en funksjon som bare «legger liste B bak liste A»?
