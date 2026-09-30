# 20 — Portabilitet og ISO Prolog

## Mål

Du skal forstå forskjellen mellom standardisert Prolog og implementasjonsspesifikke utvidelser, og kunne ta bevisste valg om portabilitet.

## En felles kjerne

ISO Prolog standardiserer en viktig kjerne av språket: termer, unifikasjon, kontroll, aritmetikk og mange innebygde predikater. Implementasjoner tilbyr i tillegg egne biblioteker og utvidelser.

EduProlog bruker SWI-Prolog som referanseplattform, men prøver å holde grunnleggende eksempler portable når det er praktisk.

## Skill kjernen fra adaptere

Hvis programmet trenger en implementasjonsspesifikk funksjon, isoler den bak et lite predikat eller en modul. Da kan domenelogikken forbli portabel.

## Ikke anta at biblioteket er standarden

Predikater som kommer fra et bibliotek kan være svært nyttige uten å være del av ISO-kjernen. Dokumenter avhengigheten.

## Test på flere implementasjoner

Portabilitet er en egenskap som bør testes. Syntaks, modulsystem, biblioteker, flagg og detaljert I/O-atferd kan variere.

## Oppgaver

1. Finn hvilke predikater i et tidligere eksempel som er ISO-kjerne og hvilke som er SWI-spesifikke/bibliotekbaserte.
2. Flytt en implementasjonsspesifikk operasjon bak et adapterpredikat.
3. Unngå et bibliotekspredikat ved å implementere en liten portabel variant.
4. Dokumenter implementasjonskravene til et eksempel.

## Tenk

Portabilitet betyr ikke «bruk aldri utvidelser». Det betyr at avhengighetene er bevisste, synlige og begrensede.
