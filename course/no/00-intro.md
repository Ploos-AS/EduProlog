# EduProlog — Introduksjon

Prolog er et logikkprogrammeringsspråk. I stedet for først og fremst å beskrive *hvordan* en beregning skal utføres, beskriver vi fakta, relasjoner og regler — og stiller spørsmål til programmet.

## Første mål

Etter denne modulen skal du kunne:

- starte SWI-Prolog;
- skrive enkle fakta;
- stille spørringer;
- bruke variabler;
- forstå den første ideen bak unifikasjon og backtracking.

## Første kunnskapsbase

Opprett `familie.pl`:

```prolog
forelder(anna, ola).
forelder(anna, kari).
forelder(ola, liv).
```

Last filen:

```prolog
?- [familie].
```

Still spørsmål:

```prolog
?- forelder(anna, ola).
true.

?- forelder(anna, X).
X = ola ;
X = kari.
```

Semikolonet ber Prolog lete etter en ny løsning. Dette er ditt første møte med backtracking.

## En regel

```prolog
besteforelder(X, Z) :-
    forelder(X, Y),
    forelder(Y, Z).
```

Nå kan vi spørre:

```prolog
?- besteforelder(anna, Hvem).
Hvem = liv.
```

## Tenk som en relasjon

`forelder(X, Y)` er ikke en funksjon som returnerer én verdi. Den beskriver en relasjon mellom to argumenter. Derfor kan den brukes i flere retninger.

```prolog
?- forelder(Hvem, liv).
Hvem = ola.
```

Denne tankemåten blir sentral gjennom hele kurset.

## Oppgaver

1. Legg inn fem personer og minst seks `forelder/2`-fakta.
2. Finn alle barna til én person.
3. Finn forelderen til én bestemt person.
4. Lag regelen `sosken/2`.
5. Undersøk hvorfor en naiv `sosken/2`-regel kan si at en person er sitt eget søsken.

## Videre

Neste modul går dypere inn i termer, variabler og unifikasjon.
