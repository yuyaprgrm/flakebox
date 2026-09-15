# Agent guidance

- Keep template-specific files in `templates/<name>/`; keep template registration in the root `flake.nix` and user instructions in `README.md`.
- Do not put plaintext secrets in the repository.
- Make the smallest declarative Nix change that fulfills the request; preserve unrelated worktree changes.
- Validate the affected template when practical. Do not commit unless explicitly asked.
- Run Nix commands with elevated permissions; the sandbox cannot access the daemon.
- Write comments as a human maintainer would: explain why code exists, including non-obvious constraints or workarounds. Do not narrate what readable code already says.
