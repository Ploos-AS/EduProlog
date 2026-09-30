# 10 — Debugging og tracing

## Mål

Du skal kunne undersøke et Prolog-program systematisk, lese tracer-portene og skille mellom logiske feil, feil søkerekkefølge og manglende terminering.

## Start med en liten spørring

Når et større mål gir feil svar, reduser problemet. Test delmålene separat og kontroller hvilke bindinger de produserer.

## Tracerens porter

SWI-Prologs tracer viser blant annet:

- **Call** — et mål skal forsøkes.
- **Exit** — målet lyktes.
- **Redo** — Prolog prøver målet igjen under backtracking.
- **Fail** — målet kunne ikke lykkes.

Aktiver med:

```prolog
?- trace.
```

Slå av med `notrace.`.

## Et typisk problem

```prolog
last_bad(X, [_|Xs]) :-
    last_bad(X, Xs).
last_bad(X, [X]).
```

Denne kan fungere, men klausulrekkefølgen skaper unødvendig søk. En tydeligere variant setter base case først:

```prolog
last_good(X, [X]).
last_good(X, [_|Xs]) :-
    last_good(X, Xs).
```

## Ikke-terminering

Rekursjon må gjøre fremgang. Hvis et rekursivt kall gjentas med samme eller et større problem, kan søket fortsette uten ende.

## Debugging-rutine

1. Lag den minste spørringen som viser feilen.
2. Kontroller fakta og base cases.
3. Test hvert delmål.
4. Bruk tracer og følg bindingene.
5. Se etter choice points og uventet `Redo`.
6. Kontroller at rekursjonen reduserer problemet.
7. Lag en regresjonstest når feilen er rettet.

## Oppgaver

Finn og rett eksempler med feil base case, feil målordning og rekursjon som ikke gjør fremgang. Lag en regresjonstest for hver rettelse.
