# 13 — Definite Clause Grammars (DCG)

## Mål

Du skal kunne lese og skrive en enkel DCG, bruke `phrase/2`, og forstå forbindelsen mellom grammatikkregler og Prolog-predikater.

## En liten grammatikk

```prolog
sentence --> noun_phrase, verb_phrase.
noun_phrase --> determiner, noun.
verb_phrase --> verb, noun_phrase.

determiner --> [the].
noun --> [cat].
noun --> [mouse].
verb --> [chases].
```

Spør:

```prolog
?- phrase(sentence, [the,cat,chases,the,mouse]).
true.
```

## DCG er Prolog

DCG-notasjonen oversettes til vanlige predikater med ekstra argumenter som representerer resten av tokenlisten. Dette er nært knyttet til differanselister.

Du kan kalle vanlig Prolog-kode fra en DCG med krøllparenteser:

```prolog
number(N) --> [N], { number(N) }.
```

## Generering

Grammatikken kan ofte brukes begge veier:

```prolog
?- phrase(sentence, Words).
```

Da kan Prolog generere setninger som grammatikken godtar.

## Oppgaver

1. Legg til flere substantiv og verb.
2. Legg til adjektiv.
3. Lag en grammatikk for en enkel kommando.
4. Generer setninger med `phrase/2`.
5. Bruk `listing/1` eller `expand_term/2` til å undersøke hva DCG-regler blir oversatt til.

## Utfordring

La grammatikken produsere en struktur, ikke bare godta ord. For eksempel kan en kommando bli til `move(Direction)`.

## Tenk

Hvorfor passer en relasjonell grammatikk godt når vi både vil analysere og generere språk?
