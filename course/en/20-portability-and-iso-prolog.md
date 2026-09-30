# 20 — Portability and ISO Prolog

## Goals

Understand the difference between standardized Prolog and implementation-specific extensions and make deliberate portability choices.

## A common core

ISO Prolog standardizes an important language core including terms, unification, control, arithmetic and many built-ins. Implementations add their own libraries and extensions.

EduProlog uses SWI-Prolog as its reference platform while keeping foundational examples portable where practical.

## Separate core from adapters

If an application needs implementation-specific behavior, isolate it behind a small predicate or module so domain logic can remain portable.

## A library is not automatically the standard

A library predicate may be useful without belonging to the ISO core. Document the dependency.

## Test on multiple implementations

Portability should be tested. Syntax, module systems, libraries, flags and detailed I/O behavior may differ.

## Exercises

1. Classify predicates from an earlier example as core or implementation/library dependent.
2. Hide an implementation-specific operation behind an adapter.
3. Replace a convenience library predicate with a small portable implementation.
4. Document an example's implementation requirements.

## Think

Portability does not mean “never use extensions.” It means dependencies are deliberate, visible and limited.
