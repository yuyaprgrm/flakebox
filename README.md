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

## Rust

```console
nix flake init -t github:yuyaprgrm/flakebox#rust
direnv allow
cargo init
cargo run
```

The development shell includes Cargo, rustfmt, and Clippy. Run `cargo test`,
`cargo fmt`, and `cargo clippy` to check the project.

## Go

```console
nix flake init -t github:yuyaprgrm/flakebox#go
direnv allow
go mod init example.com/hello
```

The development shell includes Go and gopls. Run `go fmt ./...`,
`go test ./...`, and `go vet ./...` to check the project.
