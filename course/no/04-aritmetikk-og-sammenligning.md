# 04 — Aritmetikk og sammenligning

## Mål

Du skal kunne skille mellom unifikasjon og aritmetisk evaluering, bruke `is/2`, sammenligne tall og skrive enkle rekursive beregninger.

## Termer er ikke automatisk regnestykker

```prolog
?- X = 2 + 3.
X = 2+3.

?- X is 2 + 3.
X = 5.
```

`=/2` unifiserer termer. `is/2` evaluerer uttrykket på høyre side.

## Numeriske sammenligninger

```prolog
2 =:= 1 + 1.
3 =\= 1 + 1.
2 < 3.
3 > 2.
2 =< 2.
3 >= 2.
```

Ikke bland `=` og `=:=`: de svarer på forskjellige spørsmål.

## Rekursive beregninger

```prolog
factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.
```

Her må `N` være kjent nok til at sammenligningen og regnestykket kan evalueres.

## Oppgaver

1. Prøv `X = 2+3` og `X is 2+3`.
2. Test forskjellen mellom `2+2 = 4` og `2+2 =:= 4`.
3. Implementer `square/2`.
4. Implementer `factorial/2`.
5. Implementer `sum_to/2`, summen fra 1 til N.

## Utfordring

Skriv `max2(A,B,Max)` uten å bruke et innebygd max-predikat.

## Tenk

Hvorfor er vanlig Prolog-aritmetikk mindre relasjonell enn `append/3`? Senere møter vi constraints, som løser mange av disse begrensningene.
