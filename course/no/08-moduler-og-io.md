# 08 — Moduler og I/O

## Mål

Du skal kunne dele et Prolog-program i moduler, eksportere et offentlig grensesnitt og lese/skrive enkle termer og tekststrømmer.

## Moduler

En fil kan erklære hvilke predikater den tilbyr:

```prolog
:- module(greetings, [greeting/2]).

greeting(Name, Text) :-
    format(string(Text), 'Hei, ~w!', [Name]).
```

En annen fil kan laste modulen med `use_module/1`.

Moduler gjør avhengigheter tydeligere og reduserer risikoen for navnekollisjoner.

## Skrive data

`format/2` og `format/3` er nyttige for kontrollert tekstutskrift:

```prolog
?- format('Svar: ~w~n', [42]).
Svar: 42
```

Ved å skrive til en streng kan samme logikk testes uten terminal-I/O:

```prolog
format(string(S), 'Hei, ~w!', [ada]).
```

## Strømmer

Prolog kan arbeide med filer og andre streams. Bruk `setup_call_cleanup/3` når en ressurs må lukkes selv om noe feiler.

```prolog
read_one_term(File, Term) :-
    setup_call_cleanup(
        open(File, read, Stream),
        read_term(Stream, Term, []),
        close(Stream)
    ).
```

## Oppgaver

1. Lag en modul som eksporterer to predikater.
2. Importer den fra en annen fil.
3. Formater en hilsen til en streng.
4. Skriv en term til en fil og les den tilbake.
5. Forklar hvorfor opprydding av streams må skje også ved feil.

## Utfordring

Lag en liten modul som lagrer og leser en enkel Prolog-term fra fil, men hold selve domenelogikken uavhengig av I/O.

## Tenk

Hvorfor er et lite eksplisitt modulgrensesnitt lettere å teste og vedlikeholde enn en stor samling globale predikater?
