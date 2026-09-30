# 05 — Søk, choice points og backtracking

## Mål

Du skal forstå hvordan Prolog søker etter løsninger: klausuler ovenfra og ned, mål fra venstre mot høyre, choice points og backtracking.

## Flere svar

```prolog
color(apple, red).
color(cherry, red).
color(banana, yellow).
```

Spør:

```prolog
?- color(Fruit, red).
```

Prolog finner første løsning. Når du ber om neste løsning, går systemet tilbake til et punkt der et annet valg er mulig.

## Choice points

```prolog
route(a, b).
route(a, c).
route(b, d).
route(c, d).
```

Spørringen `route(a, X)` har mer enn ett mulig faktum. Prolog må huske at det finnes alternativer.

## Dybde-først

Standard Prolog bruker i praksis dybde-først-søk med klausuler prøvd i programrekkefølge. Derfor kan rekkefølge påvirke terminering og ytelse selv når den deklarative betydningen ser lik ut.

## Generer og test

```prolog
candidate(1).
candidate(2).
candidate(3).
candidate(4).

even_candidate(X) :-
    candidate(X),
    0 is X mod 2.
```

Først genereres kandidater; deretter testes de. Ved feil backtracker Prolog og prøver neste kandidat.

## Observer søket

I SWI-Prolog kan du bruke `trace.` før en spørring og `notrace.` etterpå. Følg spesielt Call, Exit, Redo og Fail.

## Oppgaver

1. Finn alle røde frukter ved backtracking.
2. Forutsi rekkefølgen på svarene før du kjører en spørring.
3. Bytt rekkefølge på fakta og observer forskjellen.
4. Spor `even_candidate(X)`.
5. Lag et predikat med minst to choice points.

## Utfordring

Lag en liten reisegraf og finn flere mulige ruter mellom to steder. Forklar hvor Prolog må gå tilbake for å prøve et alternativ.

## Tenk

Den deklarative lesningen sier *hva* som er sant. Den prosedyremessige lesningen hjelper oss forstå *hvordan* Prolog leter. Gode Prolog-programmer krever forståelse av begge.
