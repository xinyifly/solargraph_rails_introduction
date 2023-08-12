with import <nixpkgs> { };

let
  ruby = ruby_3_2;
  gems = bundlerEnv {
    inherit ruby;
    name = "gems-solargraph-rails-introduction";
    gemdir = ./.;
  };
in mkShell { buildInputs = [ ruby gems bundix ]; }
