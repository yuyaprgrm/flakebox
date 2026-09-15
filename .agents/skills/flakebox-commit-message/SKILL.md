---
name: flakebox-commit-message
description: Create, split, propose, or review commits in the flakebox repository.
---

# Flakebox commit guidance

- Make each commit one reviewable, reversible purpose. Keep a template's files,
  root registration, and documentation together when they depend on each other.
- Inspect staged, unstaged, and untracked changes first. Preserve unrelated work
  and any existing partial stage.
- Use an English imperative subject: `type(scope): summary`, under 72 characters
  and without a period. Prefer the template name as the scope; use `templates`,
  `docs`, or `deps` for repository-wide changes.
- Always include a short body stating the outcome and relevant rationale, wrapped
  at about 72 characters. Finish with `Validation: ...` when checks or important
  limitations belong in the commit; distinguish evaluation, builds, and runtime
  testing, and do not claim unperformed checks.
- Do not push or rewrite history unless explicitly requested.
- After committing, verify the worktree and report the commit hash and summary.
