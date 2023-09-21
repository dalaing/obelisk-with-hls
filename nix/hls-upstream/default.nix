{ mkDerivation, aeson, aeson-pretty, async, base, base16-bytestring
, binary, bytestring, containers, cryptohash-sha1, data-default
, deepseq, directory, extra, filepath, ghc, ghc-boot-th, ghc-paths
, ghcide, ghcide-bench, ghcide-test-utils, githash, gitrev
, hashable, hie-bios, hiedb, hls-alternate-number-format-plugin
, hls-cabal-fmt-plugin, hls-cabal-plugin, hls-call-hierarchy-plugin
, hls-change-type-signature-plugin, hls-class-plugin
, hls-code-range-plugin, hls-eval-plugin
, hls-explicit-fixity-plugin, hls-explicit-imports-plugin
, hls-explicit-record-fields-plugin, hls-floskell-plugin
, hls-fourmolu-plugin, hls-gadt-plugin, hls-graph
, hls-haddock-comments-plugin, hls-hlint-plugin
, hls-module-name-plugin, hls-ormolu-plugin, hls-plugin-api
, hls-pragmas-plugin, hls-qualify-imported-names-plugin
, hls-refactor-plugin, hls-refine-imports-plugin, hls-rename-plugin
, hls-retrie-plugin, hls-splice-plugin
, hls-stylish-haskell-plugin, hls-tactics-plugin, hls-test-utils
, hp2pretty, hspec-expectations, implicit-hie, lens, lens-aeson
, lib, lsp, lsp-test, lsp-types, mtl, optparse-applicative
, optparse-simple, prettyprinter, process, regex-tdfa
, safe-exceptions, shake, shake-bench, sqlite-simple, stm
, temporary, text, transformers, unix, unliftio-core
, unordered-containers, yaml
}:
mkDerivation {
  pname = "haskell-language-server";
  version = "2.0.0.0";
  sha256 = "d0bf491b1f1e2584b7eaf27a9550d0331f4d957d05be211a9708cf94291f5c22";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson-pretty async base base16-bytestring bytestring containers
    cryptohash-sha1 data-default directory extra filepath ghc ghcide
    githash hie-bios hiedb hls-alternate-number-format-plugin
    hls-cabal-fmt-plugin hls-cabal-plugin hls-call-hierarchy-plugin
    hls-change-type-signature-plugin hls-class-plugin
    hls-code-range-plugin hls-eval-plugin hls-explicit-fixity-plugin
    hls-explicit-imports-plugin hls-explicit-record-fields-plugin
    hls-floskell-plugin hls-fourmolu-plugin hls-gadt-plugin hls-graph
    hls-haddock-comments-plugin hls-hlint-plugin hls-module-name-plugin
    hls-ormolu-plugin hls-plugin-api hls-pragmas-plugin
    hls-qualify-imported-names-plugin hls-refactor-plugin
    hls-refine-imports-plugin hls-rename-plugin hls-retrie-plugin
    hls-splice-plugin hls-stylish-haskell-plugin
    hls-tactics-plugin lsp optparse-applicative optparse-simple
    prettyprinter process safe-exceptions sqlite-simple text
    unordered-containers
  ];
  executableHaskellDepends = [
    aeson async base base16-bytestring binary bytestring containers
    cryptohash-sha1 data-default deepseq directory extra filepath ghc
    ghc-boot-th ghc-paths ghcide gitrev hashable hie-bios hiedb
    hls-graph hls-plugin-api lens lsp lsp-types mtl
    optparse-applicative optparse-simple prettyprinter process
    regex-tdfa safe-exceptions sqlite-simple stm temporary text
    transformers unix unliftio-core unordered-containers
  ];
  testHaskellDepends = [
    aeson base bytestring containers data-default deepseq directory
    extra filepath ghcide ghcide-test-utils hashable hls-plugin-api
    hls-refactor-plugin hls-test-utils hspec-expectations lens
    lens-aeson lsp-test lsp-types prettyprinter process text
    unordered-containers
  ];
  testToolDepends = [ ghcide ];
  benchmarkHaskellDepends = [
    aeson base containers data-default directory extra filepath
    ghcide-bench hls-plugin-api lens lens-aeson optparse-applicative
    shake shake-bench text yaml
  ];
  benchmarkToolDepends = [ ghcide-bench hp2pretty implicit-hie ];
  homepage = "https://github.com/haskell/haskell-language-server#readme";
  description = "LSP server for GHC";
  license = lib.licenses.asl20;
}
