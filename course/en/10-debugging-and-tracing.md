# 10 — Debugging and tracing

Debug Prolog by reducing a failing query, testing subgoals independently, inspecting bindings, and then using the tracer.

The important tracer ports are **Call**, **Exit**, **Redo**, and **Fail**. Unexpected Redo events often reveal choice points you did not realize were present.

For recursive predicates, verify the base case and ensure each recursive call makes progress toward it.

A useful workflow is: reproduce with the smallest query, inspect subgoals, trace, fix the cause, and add a regression test.
