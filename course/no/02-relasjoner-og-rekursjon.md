# 02 — Relasjoner og rekursjon

## Mål

Etter denne modulen skal du kunne:

- lese og skrive relasjoner med flere argumenter;
- bygge nye relasjoner fra eksisterende fakta og regler;
- forklare base case og rekursivt case;
- bruke rekursjon til å beskrive transitive relasjoner;
- kjenne igjen en rekursiv definisjon som ikke terminerer.

## Relasjoner

I Prolog beskriver vi ofte forhold mellom ting.

```prolog
parent(anna, ola).
parent(ola, liv).
```

Dette kan leses som «Anna er forelder til Ola» og «Ola er forelder til Liv».

En ny relasjon kan bygges fra eksisterende relasjoner:

```prolog
grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).
```

Spørsmålet

```prolog
?- grandparent(anna, liv).
```

kan besvares ved å finne en `Y` som binder de to delmålene sammen.

## Rekursjon

Noen relasjoner har vilkårlig dybde. En person er etterkommer av en annen dersom personen enten er et direkte barn, eller barn av en etterkommer.

```prolog
descendant(Child, Ancestor) :-
    parent(Ancestor, Child).

descendant(Descendant, Ancestor) :-
    parent(Ancestor, Child),
    descendant(Descendant, Child).
```

Den første regelen er base case. Den andre reduserer problemet ett ledd og spør rekursivt videre.

## Grafer

Samme idé virker utenfor slektstrær.

```prolog
edge(a, b).
edge(b, c).
edge(c, d).

reachable(X, Y) :-
    edge(X, Y).

reachable(X, Y) :-
    edge(X, Z),
    reachable(Z, Y).
```

Nå kan Prolog finne en sti uten at vi på forhånd sier hvor lang den er.

## Rekkefølge betyr noe

Logisk kan regler se like ut, men utførelsen påvirkes av målordenen. En dårlig rekursiv regel kan søke for alltid.

Vi kommer tilbake til søk og terminering i detalj senere. Foreløpig: sørg for at rekursjonen beveger seg mot et enklere tilfelle.

## Oppgaver

1. Legg til flere personer i familietreet.
2. Skriv `sibling/2`.
3. Spør Prolog etter alle etterkommere av én person.
4. Lag en liten graf med minst seks noder.
5. Bruk `reachable/2` til å finne hvilke noder som kan nås fra startnoden.
6. Tegn for hånd hvilke rekursive kall som gjøres for én spørring.

## Utfordring

Skriv `ancestor/2` som den motsatte visningen av `descendant/2`. Prøv predikatet i flere retninger med variabler.

## Tenk

Prolog-predikater er relasjoner, ikke bare funksjoner med input og output. Hvilke av predikatene i denne modulen kan nyttig spørres «baklengs»?
