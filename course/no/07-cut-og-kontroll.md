# 07 — Cut og kontroll

## Mål

Du skal forstå `!/0`, if-then-else, forskjellen mellom green og red cuts, og hvorfor cut skal brukes bevisst.

## Cut

Cut skrives `!`. Når Prolog passerer et cut, forkastes relevante alternative valg som ble opprettet siden predikatet ble kalt.

```prolog
sign(N, positive) :-
    N > 0,
    !.
sign(0, zero) :-
    !.
sign(_, negative).
```

For et gitt tall trenger vi ikke prøve senere klausuler når riktig kategori er funnet.

## Green cut

Et *green cut* fjerner bare unødvendig søk. Det endrer ikke de tilsiktede logiske svarene.

```prolog
minimum(A, B, A) :-
    A =< B,
    !.
minimum(_, B, B).
```

## Red cut

Et *red cut* er nødvendig for programmets tilsiktede svar eller skjuler informasjon som ellers ville blitt uttrykt i reglene. Slike cuts gjør programmet vanskeligere å lese deklarativt og bør behandles med varsomhet.

## If-then-else

```prolog
absolute(X, A) :-
    ( X >= 0 ->
        A is X
    ;
        A is -X
    ).
```

Dette kan være tydeligere enn enkelte cut-baserte kontrollmønstre.

## Cut påvirker backtracking

```prolog
first_color(Item, Color) :-
    color(Item, Color),
    !.
```

Selv om flere `color/2`-fakta kunne passe, beholder predikatet bare den første løsningen.

## Oppgaver

1. Implementer `minimum/3` med green cut.
2. Skriv samme relasjon uten cut og sammenlign svarene.
3. Implementer absoluttverdi med if-then-else.
4. Lag et eksempel hvor cut fjerner et legitimt alternativ.
5. Bruk `trace` og observer hva som skjer når cut passeres.

## Regel

Bruk ikke cut bare fordi et program backtracker mer enn forventet. Forstå først søket. Spør deretter om kontrollen kan uttrykkes klarere uten cut.

## Tenk

Et Prolog-program kan leses både deklarativt og prosedyremessig. Hva mister vi når kontrollmekanismer blir nødvendige for å forstå hvilke svar programmet faktisk gir?
