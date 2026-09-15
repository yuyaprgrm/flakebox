# Agent guidance

- Keep template-specific files in `templates/<name>/`; keep template registration in the root `flake.nix` and user instructions in `README.md`.
- Generate each template's `flake.lock` with `nix flake lock`; never write or copy a lock file manually. Ignore only artifacts produced by the generated project.
- Preserve the systems supported by existing templates unless the toolchain requires otherwise; document any narrower support.
- Do not put plaintext secrets in the repository.
- Make the smallest declarative Nix change that fulfills the request; preserve unrelated worktree changes.
- Use `path:.` when validating untracked files; do not stage files only for Nix evaluation.
- Do not commit unless explicitly asked.
- Run Nix commands through the execution tool's sandbox escalation mechanism (`sandbox_permissions: "require_escalated"`); the sandbox cannot access the daemon. This means running outside the sandbox as the current user, not using `sudo`.
- Write comments as a human maintainer would: explain why code exists, including non-obvious constraints or workarounds. Do not narrate what readable code already says.

## Validation

- Run commands from this repository's root. For template or registration changes, run `nix flake check --no-build path:.` and `nix flake check --no-build path:./templates/<name>` for each affected template, replacing `<name>` with its actual name. The root check alone does not validate the nested template flakes.
- For changes to a template's development shell or dependencies, also run `nix develop path:./templates/<name> --command <check>` with a relevant tool check, such as `cargo --version` for Rust. For changed sample files or build instructions, initialize the local template in a fresh temporary directory and run the documented build there.
- Exercise the native system and report which supported systems were not tested; distinguish evaluation, shell realization, builds, and runtime tests.
- Documentation-only edits need a diff review and `git diff --check`. Report failed or skipped checks with the concrete reason; do not describe an unperformed check as passing.
