# 19 — Ytelse, indeksering og terminering

## Mål

Du skal kunne skille mellom korrekthet og ytelse, kjenne igjen vanlige årsaker til ikke-terminering og skrive predikater som gir Prolog gode muligheter til effektiv søking.

## Terminerer søket?

En rekursiv regel må ikke bare ha et base case; søkestrategien må også kunne nå det.

```prolog
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).
```

På en endelig, asyklisk forelderrelasjon gjør dette fremgang. På vilkårlige grafer må vi håndtere sykler eksplisitt.

## Målrekkefølge

Tidlige mål kan redusere søkeområdet:

```prolog
result(Person) :-
    person(Person),
    active(Person),
    expensive_test(Person).
```

Hvis ett billig mål filtrerer kraftig, kan plasseringen ha stor betydning. Men ikke endre logisk mening bare for fart.

## Indeksering

Prolog-systemer kan indeksere klausuler ut fra argumenter. Et predikat brukes ofte mer effektivt når tidlige argumenter er godt bundet ved kall. Nøyaktige indekseringsstrategier er implementasjonsavhengige.

Design først et klart grensesnitt; mål deretter reell ytelse på de kallmønstrene programmet faktisk bruker.

## Determinisme

Et predikat som etterlater unødvendige choice points kan gjøre mer arbeid enn nødvendig. Bruk tracer og måleverktøy til å finne dette før du vurderer cut.

## Mål, ikke gjett

SWI-Prolog tilbyr blant annet `statistics/2` og profileringsverktøy. Optimalisering uten måling kan gjøre koden mindre deklarativ uten å løse et reelt problem.

## Oppgaver

1. Finn et rekursivt predikat som ikke terminerer og forklar hvorfor.
2. Gjør en graftraversering sykkelsikker.
3. Sammenlign to målordninger på et datasett.
4. Finn et predikat som etterlater et unødvendig choice point.
5. Mål et kall før og etter en begrunnet endring.

## Tenk

Hvilke ytelsesforbedringer er semantisk nøytrale, og hvilke endrer hvilke svar eller kallmønstre et predikat støtter?
