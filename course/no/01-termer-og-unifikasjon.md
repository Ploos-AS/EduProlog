# 01 — Termer og unifikasjon

## Mål

Etter denne modulen skal du kunne lese Prolog-termer, skille mellom atomer, tall, variabler og sammensatte termer, og forklare hva unifikasjon gjør.

## Termer

Prolog arbeider med termer.

```prolog
ada
42
X
person(ada, programmerer)
point(10, 20)
```

`ada` er et atom, `42` er et tall, `X` er en variabel og `person(ada, programmerer)` er en sammensatt term.

Variabler begynner normalt med stor bokstav eller understrek.

## Unifikasjon

Operatoren `=` ber Prolog forsøke å gjøre to termer like.

```prolog
?- X = ada.
X = ada.

?- person(Name, Role) = person(ada, programmerer).
Name = ada,
Role = programmerer.

?- point(X, X) = point(10, 20).
false.
```

Dette er ikke vanlig tilordning slik du kjenner den fra imperative språk. Prolog finner bindinger som gjør begge sider til samme term.

## Struktur betyr noe

```prolog
?- pair(X, Y) = pair(left, right).
X = left,
Y = right.

?- pair(X, Y) = point(left, right).
false.
```

Navnet og antall argumenter må passe.

## Anonym variabel

Når verdien ikke er interessant, bruker vi `_`.

```prolog
person(ada, programmerer).
person(grace, matematiker).

programmer(Name) :-
    person(Name, _).
```

## Oppgaver

1. Forutsi resultatet av `X = hello`.
2. Forutsi resultatet av `pair(X, X) = pair(a, a)`.
3. Forutsi resultatet av `pair(X, X) = pair(a, b)`.
4. Lag tre egne sammensatte termer.
5. Forklar med egne ord hvorfor unifikasjon ikke er det samme som variabeltilordning i C eller Python.

## Utfordring

Representer en bok som `book(Title, Author, Year)`. Skriv tre bok-termer og prøv spørringer som bruker variabler til å hente ut feltene.
