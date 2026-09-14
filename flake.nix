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
    };
}
