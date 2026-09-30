# 17 — Small expert systems

A simple rule-based expert system combines a knowledge base, facts about a case, inference rules, and explanations.

This module uses a fictional robot domain. Rules remain explicit and testable, and recommendations return structured reasons rather than unexplained answers.

If several rules apply at once, preserve those conclusions unless the domain defines an explicit conflict-resolution policy. Do not use cut merely to hide competing answers.

## Exercises

Add states and multi-condition rules, return explanations, enumerate all applicable recommendations, model an explicit priority scheme, and build a small tested rule system of your own.
