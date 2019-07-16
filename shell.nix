{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    texlive.combined.scheme-full
    (python3.withPackages(ps: with ps; [ bibtexparser jinja2 pyyaml beautifulsoup4 ]))
  ];
}
