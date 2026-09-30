# 17 — Small expert systems

## Goals

Combine facts, rules and explanations into a small rule-based system.

## An expert system

A classic expert system commonly contains a knowledge base, facts about the current case, inference rules and a way to explain conclusions. We use a fictional robot domain.

## Rules

```prolog
recommend(recharge, State) :-
    fact(State, battery_low).

recommend(check_sensor, State) :-
    fact(State, obstacle_reported),
    fact(State, sensor_uncertain).
```

The conclusion follows from explicit, readable and testable rules.

## Explainability

```prolog
recommend(recharge, State,
          because(battery_low)) :-
    fact(State, battery_low).
```

The interface can now display why a recommendation was produced.

## Rule conflicts

Larger systems may produce several simultaneous conclusions. Do not hide them with cut unless the domain defines an explicit priority policy.

## Exercises

1. Add a new robot state.
2. Add a rule with two conditions.
3. Return a structured explanation.
4. Enumerate every recommendation for one state.
5. Create two applicable rules and design an explicit priority representation.

## Challenge

Build a mini expert system with at least five facts, five rules and explanations for every conclusion. Test every rule independently.

## Think

Why is an explicit rule and proof basis easier to revise than a decision that returns only an unexplained result?
