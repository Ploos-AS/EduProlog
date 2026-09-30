# 16 — Kunnskapsrepresentasjon og inferens

## Mål

Du skal kunne modellere et lite domene med fakta og regler, skille eksplisitt kunnskap fra avledet kunnskap og gjøre en enkel beviskjede synlig.

## Fakta og regler

```prolog
isa(robin, bird).
isa(bird, animal).

kind_of(X, Y) :-
    isa(X, Y).
kind_of(X, Y) :-
    isa(X, Z),
    kind_of(Z, Y).
```

`isa/2` inneholder eksplisitt kunnskap. `kind_of/2` uttrykker hvordan ny kunnskap kan avledes.

## Egenskaper

```prolog
property(bird, has_wings).
```

En instans kan arve en egenskap gjennom klassifikasjon:

```prolog
has_property(X, P) :-
    property(X, P).
has_property(X, P) :-
    isa(X, Parent),
    has_property(Parent, P).
```

## Forklaringer

Det er ofte nyttig å returnere *hvorfor* en konklusjon gjelder, ikke bare `true`.

En beviskjede kan representeres som en liste med steg. Da blir inferensen inspiserbar og testbar.

## Åpen og lukket kunnskap

Fravær av et faktum betyr ikke nødvendigvis at det motsatte er kjent. Husk forskjellen fra modul 06 når du bruker `\+`.

## Oppgaver

1. Lag et lite klassehierarki.
2. Legg egenskaper på forskjellige nivåer.
3. Spør etter arvede egenskaper.
4. Returner en beviskjede for en klassifikasjon.
5. Lag et eksempel på kunnskap som er ukjent, ikke falsk.

## Utfordring

Utvid kunnskapsbasen slik at samme konklusjon kan ha mer enn én bevisvei. Finn alle forklaringene.

## Tenk

Hva vinner vi ved å lagre grunnfakta separat fra reglene som avleder nye fakta?
