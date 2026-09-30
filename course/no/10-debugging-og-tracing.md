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

En vanlig feil er å bruke `is/2` før variabelen på høyre side er bundet:

```prolog
next_bad(N, Next) :-
    Next is N + 1.
```

Spørringen `next_bad(N, 5)` gir en instansieringsfeil: aritmetikk med `is/2` er ikke en relasjon som kan kjøres baklengs. Traceren viser at feilen oppstår idet `is/2` kalles med ubundet `N`.

Når retningen er kjent, gjør kontrakten eksplisitt:

```prolog
next_from(N, Next) :-
    number(N),
    Next is N + 1.
```

Hvis problemet egentlig krever relasjonell heltallsaritmetikk, er CLP(FD) et bedre verktøy; det kommer i modul 15.

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
