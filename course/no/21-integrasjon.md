# 21 — Integrasjon mot andre systemer

## Mål

Du skal kunne designe en tydelig grense mellom Prolog og et annet program uten å blande transport, parsing og domenelogikk.

## Prolog som komponent

Et annet program trenger ikke forstå hele kunnskapsbasen. Det kan sende en forespørsel og motta et strukturert svar.

En enkel pedagogisk protokoll kan bruke Prolog-termer:

```prolog
request(square, 7).
response(ok, 49).
```

I produksjon kan man velge andre formater og transportmekanismer, men arkitekturprinsippet er det samme.

## Lagdeling

Hold disse delene separate:

1. transport/I/O;
2. parsing og validering;
3. domenelogikk;
4. serialisering av svar.

Da kan domenelogikken testes uten nettverk eller prosesser.

## Et request-predikat

```prolog
handle(request(square, X), response(ok, Y)) :-
    number(X),
    Y is X * X.
```

Ukjente operasjoner kan returnere et eksplisitt feilresultat i stedet for å krasje protokollen.

## Oppgaver

1. Legg til en ny request-type.
2. Test ugyldig input.
3. Hold `handle/2` uavhengig av stdin/stdout.
4. Skriv en liten driver som leser én term og skriver ett svar.
5. Beskriv hvordan samme domenekjerne kunne ligge bak HTTP, en subprocess eller en lokal applikasjon.

## Tenk

Et stabilt dataformat og et lite grensesnitt gjør det mulig å bytte transport uten å skrive inferenslogikken på nytt.
