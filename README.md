# flakebox

Development environment templates for Nix flakes.

## Typst

```console
nix flake init -t github:yuyaprgrm/flakebox#typst
```

## upLaTeX

```console
nix flake init -t github:yuyaprgrm/flakebox#uplatex
direnv allow
latexmk main.tex
```

The generated PDF is `main.pdf`. Run `latexmk -c` to remove intermediate
build files.
