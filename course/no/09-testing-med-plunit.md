# 09 — Testing med plunit

## Mål

Du skal kunne skrive automatiske tester for Prolog-kode med SWI-Prologs `plunit`.

## En enkel test

```prolog
:- begin_tests(math).

test(addition) :-
    assertion(2 + 2 =:= 4).

:- end_tests(math).
```

Kjør med `run_tests.`.

## Forventet feil

```prolog
test(not_member, [fail]) :-
    member(x, [a,b,c]).
```

Her er testen vellykket når målet feiler.

## Test verdier eksplisitt

```prolog
test(answer) :-
    square(5, X),
    assertion(X == 25).
```

Dette gjør forventningen synlig.

## Flere løsninger

Når et predikat kan gi flere svar, bør testen også kontrollere dette:

```prolog
test(colors) :-
    findall(C, color(ball, C), Cs),
    assertion(Cs == [red,blue]).
```

Hvis rekkefølgen ikke er en del av kontrakten, kan `setof/3` være et bedre valg.

## Test både suksess og feil

Gode tester dokumenterer ikke bare hva som skal virke, men også hva som skal avvises. Rekursive relasjoner bør testes med base case og dypere tilfeller.

## Oppgaver

1. Skriv en test som skal lykkes.
2. Skriv en test med `[fail]`.
3. Test et predikat som binder en variabel.
4. Test alle løsninger fra et ikke-deterministisk predikat.
5. Lag en regresjonstest for en feil du bevisst introduserer og deretter retter.

## Utfordring

Velg et predikat fra en tidligere modul og lag en liten testsuite som dekker base case, normaltilfelle, grenseverdi og forventet feil.

## Tenk

En testsuite er også dokumentasjon. Hva forteller testene en fremtidig leser om den tilsiktede betydningen av et predikat?
