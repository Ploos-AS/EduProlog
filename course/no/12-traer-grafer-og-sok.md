# 12 — Trær, grafer og søk

## Mål

Du skal kunne representere trær og grafer som Prolog-termer og skrive rekursive søk som også håndterer sykler.

## Binære trær

Vi representerer et tomt tre med `empty` og en node med `node(Value, Left, Right)`.

```prolog
contains(X, node(X, _, _)).
contains(X, node(_, L, _)) :- contains(X, L).
contains(X, node(_, _, R)) :- contains(X, R).
```

## Grafer og sykler

En naiv rekursiv `reachable/2` kan gå i loop dersom grafen inneholder en syklus. Derfor husker vi besøkte noder.

```prolog
path(Start, Goal, Path) :-
    path_(Start, Goal, [Start], Rev),
    reverse(Rev, Path).
```

Hjelpepredikatet utvider bare til noder som ikke allerede er besøkt.

## Dybde-først-søk

Dette gir en enkel DFS. Prolog håndterer alternative kanter gjennom backtracking, mens besøkt-listen hindrer at samme sti går rundt i sirkel.

## Oppgaver

1. Lag et binært tre og søk etter verdier.
2. Tell nodene i treet.
3. Lag en graf med minst én syklus.
4. Finn en sti mellom to noder.
5. Be Prolog om flere mulige stier.

## Utfordring

Utvid søket slik at du kan finne alle enkle stier mellom to noder. Diskuter hvorfor dette kan bli dyrt selv i en liten graf.
