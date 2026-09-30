# M0 freeze criteria

EduProlog enters M0 freeze when all applicable PLOOS-PROJECT-1 gates below are satisfied for the same revision.

## Content

- [x] Modules 00–22 exist in Norwegian and English.
- [x] Norwegian and English editions have completed a pedagogical parity pass.
- [x] Runnable reference examples exist for the course progression.
- [x] Exercises and reference solutions cover modules 01–22.
- [x] The capstone has explicit architecture, requirements and learner deliverables.

## Test

- [x] Reference examples load under SWI-Prolog.
- [x] Project-local plunit suites pass.
- [x] Module 12 tree-size regression fixed.
- [x] GitHub CI is green on commit `dbde90f`.

## Student OCI

- [x] Declares `PLOOS-STUDENT-OCI-1` in `student-oci.json`.
- [x] Uses `/course` as workspace.
- [x] Provides `student-env-info`.
- [x] Provides `student-check`.
- [x] Requires no private Ploos infrastructure or restricted payloads.
- [x] CI builds the image and executes both stable commands.

## Publishing

- [x] Canonical `publication.yaml` uses the publishing v1 metadata shape.
- [x] Norwegian (`nb`) is primary and English (`en`) is parallel.
- [x] ISBN values remain `PENDING` until assigned centrally.
- [x] Consumer workflow targets the stable contract:
      `Ploos-AS/publishing/.github/workflows/reusable-book-validate.yml@v1`.
- [ ] Publishing qualification is green.

### Current publishing blocker

As of 2026-09-30, the canonical Ploos Publishing documentation requires consumers to use the stable `@v1` major alias for release qualification, but the `Ploos-AS/publishing` repository does not yet expose a `refs/tags/v1` ref. The EduProlog publishing workflow therefore cannot start the reusable job.

EduProlog deliberately does **not** fall back to `@main` for release qualification. Freeze remains blocked until Publishing publishes its qualified `v1` alias and this workflow passes.

## Freeze rule

Do not tag the M0 release while any required checkbox above remains open. Once Publishing `v1` exists, rerun the publishing workflow; if it passes, M0 may enter freeze without changing the consumer contract.
