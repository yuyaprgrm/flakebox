{
  description = "Development environment templates";

  outputs =
    { self }:
    {
      templates.typst = {
        path = ./templates/typst;
        description = "Typst development shell with Tinymist and typstyle";
        welcomeText = ''
          # Typst development environment

          Run `direnv allow` to activate the development shell automatically.
        '';
      };

      templates.uplatex = {
        path = ./templates/uplatex;
        description = "Japanese upLaTeX development shell with latexmk";
        welcomeText = ''
          # upLaTeX development environment

          Run `direnv allow`, then build the sample document with `latexmk main.tex`.
        '';
      };
    };
}
