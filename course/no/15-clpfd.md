# 15 — Constraint Logic Programming med CLP(FD)

## Mål

Du skal kunne bruke heltallsconstraints til å beskrive relasjoner mellom ukjente tall og deretter søke etter løsninger.

## Fra evaluering til constraints

Med vanlig aritmetikk:

```prolog
Y is X + 1.
```

må høyresiden kunne evalueres. Med CLP(FD):

```prolog
Y #= X + 1.
```

kan både `X` og `Y` være ukjente.

Last biblioteket:

```prolog
:- use_module(library(clpfd)).
```

## Domener

```prolog
X in 1..10,
Y in 1..10,
X + Y #= 10.
```

Constraints begrenser mulighetene. `labeling/2` brukes når vi vil enumerere konkrete løsninger.

## Sammenligninger

CLP(FD) bruker blant annet `#=`, `#\=`, `#<`, `#>`, `#=<` og `#>=`.

## Et lite puslespill

```prolog
pair(X, Y) :-
    [X,Y] ins 1..9,
    X + Y #= 10,
    X #< Y.
```

Deretter:

```prolog
?- pair(X,Y), labeling([], [X,Y]).
```

## all_distinct

Ved oppgaver der variabler må ha forskjellige verdier er `all_distinct/1` sentral.

## Oppgaver

1. Finn alle tallpar som summerer til 10.
2. Legg til kravet `X #< Y`.
3. Lag tre variabler i domenet 1..9 med ulik verdi og sum 15.
4. Sammenlign en CLP(FD)-relasjon med en variant skrevet med `is/2`.
5. Prøv samme constraint med ulike variabler bundet på forhånd.

## Utfordring

Lag et lite logisk tallpuslespill og skill mellom constraint-modellen og selve søket med `labeling/2`.

## Tenk

Hvorfor er det nyttig å skille «hvilke løsninger er lovlige?» fra «i hvilken rekkefølge skal vi lete etter dem?»?
