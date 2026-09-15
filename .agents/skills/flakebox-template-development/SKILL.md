---
name: flakebox-template-development
description: Add, change, or validate development-environment templates in the flakebox repository.
---

# Flakebox template development

- Keep each template's files, root `flake.nix` registration, and README usage
  consistent. Commit its lock file and include only toolchain-produced artifacts
  in its `.gitignore`.
- Preserve the systems supported by existing templates unless the toolchain
  requires otherwise; document any narrower support.
- For untracked files, use `path:.` so Nix sees the working tree. Do not stage
  files only for validation.
- Validate the root flake and the affected template flake. When practical,
  instantiate the template in a temporary directory and run its documented
  command.
- Report evaluation, builds, and runtime or document compilation distinctly.
