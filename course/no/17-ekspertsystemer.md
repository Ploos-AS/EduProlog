# 17 — Små ekspertsystemer

## Mål

Du skal kombinere fakta, regler og forklaringer til et lite regelbasert system.

## Et ekspertsystem

Et klassisk ekspertsystem har typisk:

- en kunnskapsbase;
- fakta om den aktuelle situasjonen;
- regler som trekker konklusjoner;
- en mekanisme for å forklare resultatet.

Vi bruker et enkelt fiktivt robotdomene.

## Regler

```prolog
recommend(recharge, State) :-
    fact(State, battery_low).

recommend(check_sensor, State) :-
    fact(State, obstacle_reported),
    fact(State, sensor_uncertain).
```

Dette er ikke skjult «intelligens». Konklusjonen følger av eksplisitte regler som kan leses og testes.

## Forklarbarhet

La systemet returnere både konklusjon og begrunnelse:

```prolog
recommend(recharge, State,
          because(battery_low)) :-
    fact(State, battery_low).
```

Da kan brukergrensesnittet vise hvorfor anbefalingen oppstod.

## Regelkonflikter

Større systemer kan få flere samtidige konklusjoner. Ikke skjul dette med cut uten å ha definert en faktisk prioriteringsregel.

## Oppgaver

1. Legg til en ny robottilstand.
2. Lag en regel med to betingelser.
3. Returner en strukturert forklaring.
4. Finn alle anbefalinger for samme tilstand.
5. Lag to regler som begge gjelder og diskuter hvordan en eksplisitt prioritet kunne modelleres.

## Utfordring

Bygg et mini-ekspertsystem med minst fem fakta, fem regler og forklaringer for alle konklusjoner. Test hver regel separat.

## Tenk

Hvorfor er en synlig regel og en synlig bevisgrunn ofte lettere å revidere enn en beslutning som bare returnerer et resultat?
