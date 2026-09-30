# 06 — Negasjon som feil

## Mål

Du skal forstå Prologs `\+/1`, hvorfor det kalles *negation as failure*, og hvorfor det ikke er det samme som klassisk logisk negasjon.

## Når et mål ikke kan bevises

```prolog
bird(robin).
bird(sparrow).

?- \+ bird(cat).
true.
```

Dette betyr i praksis at Prolog forsøkte `bird(cat)` og ikke fant noe bevis.

## Lukket verden

I en vanlig Prolog-database behandles manglende bevis ofte som grunnlag for å lykkes med `\+ Goal`. Det betyr ikke at systemet har bevist det motsatte i klassisk logisk forstand.

## Variabler og en viktig felle

```prolog
?- \+ bird(X).
false.
```

Dette betyr ikke «finn alle X som ikke er fugler». Prolog finner en verdi som gjør `bird(X)` sann, og dermed feiler negasjonen.

En trygg tommelfingerregel er å bruke negasjon når de relevante variablene allerede er tilstrekkelig bundet.

## Filtrering

```prolog
person(ada).
person(grace).
person(alan).
programmer(ada).
programmer(grace).

non_programmer(X) :-
    person(X),
    \+ programmer(X).
```

Rekkefølgen er viktig: først velger vi en kjent person, så tester vi om programmerer-relasjonen ikke kan bevises.

## Oppgaver

1. Test `\+ bird(cat)` og `\+ bird(X)`.
2. Skriv `non_programmer/1`.
3. Bytt rekkefølgen på målene og forklar forskjellen.
4. Lag et lite datasett med tillatte og blokkerte elementer og filtrer det.
5. Finn et eksempel der manglende kunnskap ikke bør tolkes som «usant».

## Tenk

Forskjellen mellom «jeg kan bevise at dette er usant» og «jeg kan ikke bevise at dette er sant» er avgjørende i kunnskapsbaserte systemer.
