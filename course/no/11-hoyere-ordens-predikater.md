# 11 — Høyereordenspredikater og biblioteksmønstre

## Mål

Du skal forstå predikater som mottar andre mål som argumenter, og bruke `call/N`, `maplist`, `include` og `foldl`.

## call/N

```prolog
apply_twice(P, X, Y) :-
    call(P, X, Z),
    call(P, Z, Y).
```

Et predikatnavn kan dermed være en del av dataene vi arbeider med.

## maplist

```prolog
double(X, Y) :- Y is X * 2.

?- maplist(double, [1,2,3], Ys).
Ys = [2,4,6].
```

## Filtrering

```prolog
positive(X) :- X > 0.

?- include(positive, [-2,3,0,5], Ys).
Ys = [3,5].
```

## Folding

`foldl/4` uttrykker en akkumulering over en liste.

```prolog
add(X, Acc, Out) :- Out is Acc + X.
```

Da kan `foldl(add, [1,2,3], 0, Sum)` beregne summen.

## Lesbarhet først

Høyereordenspredikater kan fjerne repetitiv rekursjon, men de er ikke automatisk bedre. Bruk dem når de gjør hensikten tydeligere.

## Oppgaver

1. Bruk `maplist/3` til å kvadrere en liste.
2. Bruk `include/3` til å velge partall.
3. Bruk `foldl/4` til å summere en liste.
4. Implementer én av operasjonene rekursivt og sammenlign.
5. Skriv et lite predikat som bruker `call/3`.

## Tenk

Når gjør abstraksjon programmet tydeligere, og når skjuler den bare en enkel rekursiv idé?
