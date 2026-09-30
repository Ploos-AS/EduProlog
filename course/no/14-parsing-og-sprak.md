# 14 — Parsing og enkel språkbehandling

## Mål

Du skal bruke DCG til å gå fra en tokenliste til en strukturert betydning, og skille syntaks fra semantikk.

## Fra ord til struktur

En parser er mer nyttig når den returnerer en term:

```prolog
command(move(Direction)) -->
    [move],
    direction(Direction).
```

Da blir:

```prolog
?- phrase(command(AST), [move,north]).
AST = move(north).
```

Termen kan behandles videre uten at resten av programmet trenger å kjenne den opprinnelige teksten.

## Et lite spørrespråk

Vi kan representere:

```text
show red objects
```

som:

```prolog
query(objects, color(red))
```

Grammatikken håndterer syntaksen. En separat evaluator kan bruke strukturen mot en kunnskapsbase.

## Tokenisering

I virkelige programmer kommer input ofte som tekst, ikke ferdige atomer. Hold tokenisering som et eget lag. Det gjør grammatikken enklere å teste.

## Oppgaver

1. Utvid kommandoene med flere retninger.
2. Parse `show red objects` til en struktur.
3. Lag en evaluator som kjører strukturen mot noen fakta.
4. Legg til en ugyldig kommando og test at parseren avviser den.
5. Generer tokens fra en semantisk term der grammatikken tillater det.

## Utfordring

Lag et lite kommandospråk med minst tre kommandotyper og separate parse- og execute-predikater.

## Tenk

Hvorfor er det nyttig at parseren produserer data i stedet for å utføre kommandoen direkte?
