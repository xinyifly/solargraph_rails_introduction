with import <nixpkgs> { };

let
  ruby = ruby_3_2;
  gems = bundlerEnv {
    inherit ruby;
    name = "gems-solargraph-rails-introduction";
    gemdir = ./.;
    gemConfig = defaultGemConfig // {
      ruby-debug-ide = attrs: { dependencies = [ "debase" "rake" ]; };
    };
  };
in mkShell { buildInputs = [ ruby gems bundix ]; }
