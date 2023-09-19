{ pkgs, ghc }:
let
  ghcWithHLS = ghc.override({overrides = self: super: {
    ghcide = pkgs.haskell.lib.dontCheck (self.callHackage "ghcide" "2.0.0.0" {});
    ghcide-bench = self.callHackage "ghcide-bench" "2.0.0.0" {};
    ghcide-test-utils = self.callHackage "ghcide-test-utils" "1.9.0.0" {};
    hls-test-utils = self.callHackage "hls-test-utils" "2.0.0.0" {};
    hls-alternate-number-format-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-alternate-number-format-plugin" "2.0.0.0" {});
    hls-cabal-fmt-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-cabal-fmt-plugin" "2.0.0.0" {});
    hls-cabal-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-cabal-plugin" "2.0.0.0" {});
    hls-call-hierarchy-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-call-hierarchy-plugin" "2.0.0.0" {});
    hls-change-type-signature-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-change-type-signature-plugin" "2.0.0.0" {});
    hls-class-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-class-plugin" "2.0.0.0" {});
    hls-code-range-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-code-range-plugin" "2.0.0.0" {});
    hls-eval-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-eval-plugin" "2.0.0.0" {});
    hls-explicit-fixity-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-explicit-fixity-plugin" "2.0.0.0" {});
    hls-explicit-imports-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-explicit-imports-plugin" "2.0.0.0" {});
    hls-explicit-record-fields-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-explicit-record-fields-plugin" "2.0.0.0" {});
    hls-floskell-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-floskell-plugin" "2.0.0.0" {});
    hls-fourmolu-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-fourmolu-plugin" "2.0.0.0" {});
    hls-gadt-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-gadt-plugin" "2.0.0.0" {});
    hls-haddock-comments-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-haddock-comments-plugin" "2.0.0.0" {});
    hls-hlint-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-hlint-plugin" "2.0.0.0" {});
    hls-module-name-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-module-name-plugin" "2.0.0.0" {});
    hls-ormolu-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-ormolu-plugin" "2.0.0.0" {});
    hls-pragmas-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-pragmas-plugin" "2.0.0.0" {});
    hls-qualify-imported-names-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-qualify-imported-names-plugin" "2.0.0.0" {});
    hls-refactor-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-refactor-plugin" "2.0.0.0" {});
    hls-refine-imports-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-refine-imports-plugin" "2.0.0.0" {});
    hls-rename-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-rename-plugin" "2.0.0.0" {});
    hls-retrie-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-retrie-plugin" "2.0.0.0" {});
    hls-splice-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-splice-plugin" "2.0.0.0" {});
    hls-stan-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-stan-plugin" "2.0.0.0" {});
    hls-stylish-haskell-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-stylish-haskell-plugin" "2.0.0.0" {});
    hls-tactics-plugin = pkgs.haskell.lib.dontCheck (self.callHackage "hls-tactics-plugin" "2.0.0.0" {});
    text-rope = self.callHackage "text-rope" "0.2" {};
    hie-bios = pkgs.haskell.lib.dontCheck (self.callHackage "hie-bios" "0.12.0" {});
    lsp = self.callHackage "lsp" "1.6.0.0" {};
    lsp-types = self.callHackage "lsp-types" "1.6.0.0" {};
    lsp-test = pkgs.haskell.lib.dontCheck (self.callHackage "lsp-test" "0.14.1.0" {});
    hiedb = pkgs.haskell.lib.dontCheck (self.callHackage "hiedb" "0.4.3.0" {});
    hls-graph = self.callHackage "hls-graph" "2.0.0.0" {};
    hls-plugin-api = self.callHackage "hls-plugin-api" "2.0.0.0" {};
    hie-compat = self.callHackage "hie-compat" "0.3.1.1" {};
    implicit-hie = self.callHackage "implicit-hie" "0.1.2.7" {};
    implicit-hie-cradle = self.callHackage "implicit-hie-cradle" "0.5.0.1" {};
    co-log-core = pkgs.haskell.lib.dontCheck (self.callHackage "co-log-core" "0.3.2.0" {});
    lens-aeson = self.callHackage "lens-aeson" "1.2.2" {};
    lens = self.callHackage "lens" "5.2.2" {};
    lucid = pkgs.haskell.lib.dontCheck super.lucid;
    tree-diff = pkgs.haskell.lib.dontCheck (self.callHackage "tree-diff" "0.3.0.1" {});
    data-array-byte = self.callHackage "data-array-byte" "0.1.0.1" {};
    ghc-check = self.callHackage "ghc-check" "0.5.0.8" {};
    microaeson = self.callHackage "microaeson" "0.1.0.1" {};
    ghc-lib-parser = self.callHackage "ghc-lib-parser" "8.10.7.20220219" {};
    ghc-lib-parser-ex = pkgs.haskell.lib.addExtraLibrary (pkgs.haskell.lib.disableCabalFlag (self.callHackage "ghc-lib-parser-ex" "8.10.0.19" {}) "auto") self.ghc-lib-parser;
    stylish-haskell = pkgs.haskell.lib.doJailbreak (self.callHackage "stylish-haskell" "0.13.0.0" {});
    floskell = self.callHackage "floskell" "0.10.7" {};
    fourmolu = pkgs.haskell.lib.doJailbreak (self.callHackage "fourmolu" "0.3.0.0" {});
    Cabal-syntax = self.callHackage "Cabal-syntax" "3.10.1.0" {};
    ghc-source-gen = self.callHackage "ghc-source-gen" "0.4.3.0" {};
    githash = pkgs.haskell.lib.dontCheck (self.callHackage "githash" "0.1.6.3" {});
    hlint = pkgs.haskell.lib.addExtraLibrary (pkgs.haskell.lib.enableCabalFlag (self.callHackage "hlint" "3.2.8" {}) "ghc-lib") self.ghc-lib-parser;
    tomland = pkgs.haskell.lib.dontCheck super.tomland;
    haskell-language-server = pkgs.haskell.lib.enableSharedExecutables (pkgs.haskell.lib.dontCheck (self.callHackage "haskell-language-server" "2.0.0.0" {}));
  };});
in 
  { inherit (ghcWithHLS) haskell-language-server; }

