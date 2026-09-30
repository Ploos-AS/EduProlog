# 22 — Capstone: et forklarbart kommandosystem

## Mål

Sluttprosjektet samler kurset i ett lite system: DCG-parser, strukturert representasjon, kunnskapsbase, inferens, forklaringer og automatiske tester.

## Oppgaven

Bygg et kommandosystem for en liten fiktiv verden. Brukeren skal kunne uttrykke spørsmål som tokenlister:

```text
where is key
what is in lab
can robot enter lab
```

Parseren skal oversette dem til strukturerte forespørsler. Domenelogikken skal svare fra fakta og regler.

## Arkitektur

Hold minst disse lagene separate:

- grammatikk/parser;
- domenefakta;
- inferensregler;
- forklaringer;
- presentasjon/integrasjon;
- tester.

## Minimumskrav

Prosjektet skal ha:

1. minst tre kommandotyper;
2. minst ti domenefakta;
3. minst fem avledningsregler;
4. minst én rekursiv relasjon;
5. minst én forespørsel som kan gi flere svar;
6. strukturerte forklaringer for avledede svar;
7. positive og negative tester;
8. README med eksempeløkter.

## Videre utfordringer

Legg til CLP(FD), lagre/lese data, flere grammatikkformer eller et eksternt grensesnitt. Hold ekstra funksjonalitet bak tydelige moduler.

## Leveranse

Capstone skal kunne kjøres i student-OCI-en uten Ploos-infrastruktur. En ny elev skal kunne klone repoet, bygge miljøet og kjøre prosjektets tester lokalt.

## Refleksjon

Dokumenter hvilke deler som er deklarative, hvor operasjonell kontroll er nødvendig, hvilke antakelser kunnskapsbasen gjør og hvilke deler som er SWI-Prolog-spesifikke.
