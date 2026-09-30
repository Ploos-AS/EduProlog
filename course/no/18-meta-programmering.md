# 18 — Meta-programmering og interpretere

## Mål

Du skal forstå at Prolog kan representere og behandle mål som data, bruke `call/1`, undersøke klausuler og bygge en liten meta-interpreter.

## Mål som data

```prolog
Goal = parent(anna, ola),
call(Goal).
```

Her konstrueres et mål som en vanlig term før det kjøres.

## En minimal interpreter

For et kontrollert sett med egne regler kan vi beskrive hvordan bevis utføres:

```prolog
solve(true).
solve((A,B)) :-
    solve(A),
    solve(B).
solve(Goal) :-
    rule(Goal, Body),
    solve(Body).
```

Kunnskapen representeres eksplisitt med `rule/2`. Dette unngår at eksemplet trenger å tolke hele Prolog-systemet.

## Bevistrær

Meta-interpreteren kan utvides til å returnere en struktur som viser hvilke regler som ble brukt. Dette kobler direkte til forklarbar inferens fra modul 16–17.

## Meta betyr ansvar

Predikater som `call/1`, `clause/2` og terminspeksjon er kraftige. De kan også gjøre kode vanskeligere å analysere, teste og portere. Bruk meta-programmering når den uttrykker et faktisk abstraksjonsbehov.

## Oppgaver

1. Kjør et mål lagret i en variabel med `call/1`.
2. Utvid mini-interpreteren med en ny regel.
3. La interpretereren returnere en bevisstruktur.
4. Sammenlign direkte utførelse med `solve/1`.
5. Diskuter hvilke Prolog-konstruksjoner den minimale interpretereren ikke støtter.

## Utfordring

Legg til støtte for et kontrollert `or(A,B)` i objekt-språket uten å gjøre interpretereren avhengig av Prologs `;/2` i kunnskapsbasen.

## Tenk

Når et program kan behandle sine egne mål som data, hvor går grensen mellom program og interpreter?
