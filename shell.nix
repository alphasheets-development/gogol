let
  pkgs = import <nixpkgs> {};

  # List of dependencies, these are provided as
  #  - extra-lib-dirs to stack for linking
  #  - buildInputs so that the headers are available during compilation
  extraLibs =
    [
      pkgs.zlib # the library
      pkgs.zlib.dev # the headers
    ];

  # Wrapped stack executable that uses the nix-provided GHC
  stack = pkgs.stdenv.mkDerivation {
      name = "stack-system-ghc";
      builder = pkgs.writeScript "stack" ''
        source $stdenv/setup
        mkdir -p $out/bin
        makeWrapper ${pkgs.stack}/bin/stack $out/bin/stack \
          --add-flags --system-ghc \
          --add-flags "--extra-lib-dirs=${pkgs.lib.makeLibraryPath extraLibs}"
      '';
      buildInputs = [ pkgs.makeWrapper ];
    };
  ghc = pkgs.haskell.compiler.ghc822;

in pkgs.mkShell
  { buildInputs = [ stack ghc ] ++ extraLibs;

    # For reasons that are beyond me stack fails to pass in zlib as an extra
    # lib
    LD_LIBRARY_PATH="${pkgs.zlib}/lib";

  }
