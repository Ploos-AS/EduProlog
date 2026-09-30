# EduProlog

**Learn logic programming by describing what is true.**

EduProlog is a beginner-friendly, bilingual (Norwegian/English) course in Prolog and logic programming from Ploos AS. The course starts from zero and builds toward practical problem solving, symbolic reasoning, search, grammars, and small expert systems.

## Goals

Students should learn to:

- understand facts, rules, queries, variables, and unification;
- reason about recursion, lists, trees, and relations;
- understand Prolog's search model and backtracking;
- use negation, cuts, arithmetic, and common control constructs responsibly;
- write, test, debug, and document Prolog programs;
- build small knowledge bases, parsers, solvers, and expert systems;
- understand both the strengths and limitations of logic programming.

## Course structure

The canonical source is Markdown under `course/`.

- `course/no/` — Norwegian primary edition
- `course/en/` — English edition
- `examples/` — runnable Prolog examples
- `exercises/` — exercises and student tasks
- `solutions/` — instructor/reference solutions
- `student/` — reproducible student OCI environment

The initial implementation targets **SWI-Prolog**, while the course aims to teach portable ISO-style Prolog wherever practical.

## Student environment

A self-contained student container is provided so the course does not depend on private Ploos infrastructure.

```sh
docker build -t eduprolog-student student/
docker run --rm -it -v "$PWD:/work" -w /work eduprolog-student
```

Inside the container:

```sh
swipl
```

## Publishing

Course material is designed for the Ploos single-source publishing pipeline, with Markdown as source and HTML, EPUB, Kindle-ready output, and PDF as publication targets.

## License

Course text, exercises, and documentation are licensed under **Creative Commons Attribution 4.0 International (CC BY 4.0)** unless otherwise noted.

Copyright © Ploos AS.
