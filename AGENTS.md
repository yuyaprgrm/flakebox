# Agent guidance

- Keep template-specific files in `templates/<name>/`; keep template registration in the root `flake.nix` and user instructions in `README.md`.
- Generate each template's `flake.lock` with `nix flake lock`; never write or copy a lock file manually. Ignore only artifacts produced by the generated project.
- Preserve the systems supported by existing templates unless the toolchain requires otherwise; document any narrower support.
- Do not put plaintext secrets in the repository.
- Make the smallest declarative Nix change that fulfills the request; preserve unrelated worktree changes.
- Use `path:.` when validating untracked files; do not stage files only for Nix evaluation.
- Validate the root flake and affected template when practical. Distinguish evaluation from builds and runtime tests. Do not commit unless explicitly asked.
- Run Nix commands with elevated permissions; the sandbox cannot access the daemon.
- Write comments as a human maintainer would: explain why code exists, including non-obvious constraints or workarounds. Do not narrate what readable code already says.
