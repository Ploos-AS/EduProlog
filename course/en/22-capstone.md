# 22 — Capstone: an explainable command system

## Goals

Combine the course into one small system: a DCG parser, structured representation, knowledge base, inference, explanations and automated tests.

## Assignment

Build a command system for a small fictional world. Users should be able to express questions as token lists:

```text
where is key
what is in lab
can robot enter lab
```

The parser translates them into structured requests; domain logic answers from facts and rules.

## Architecture

Keep at least these layers separate:

- grammar/parser;
- domain facts;
- inference rules;
- explanations;
- presentation/integration;
- tests.

## Minimum requirements

The project must contain:

1. at least three command types;
2. at least ten domain facts;
3. at least five inference rules;
4. at least one recursive relation;
5. at least one query with multiple answers;
6. structured explanations for derived answers;
7. positive and negative tests;
8. a README with example sessions.

## Further challenges

Add CLP(FD), persistent data, additional grammar forms or an external interface. Keep extra functionality behind clear modules.

## Delivery

The capstone must run in the student OCI without private Ploos infrastructure. A new learner should be able to clone the repository, build the environment and run the project tests locally.

## Reflection

Document which parts are declarative, where operational control is necessary, which assumptions the knowledge base makes, and which parts are SWI-Prolog-specific.
