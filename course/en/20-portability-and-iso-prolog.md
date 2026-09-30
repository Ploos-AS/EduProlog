# 20 — Portability and ISO Prolog

ISO Prolog defines an important common language core, while implementations add libraries and extensions. EduProlog uses SWI-Prolog as its reference platform but keeps foundational examples portable where practical.

Isolate implementation-specific behavior behind small predicates or modules, document library dependencies, and test portability rather than assuming it.

Portability does not mean avoiding useful extensions. It means making dependencies deliberate, visible and replaceable.
