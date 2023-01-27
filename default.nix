with import <nixpkgs> {};

let
  masuperlib-src = fetchTarball{url="https://github.com/Plecauz/masuperlib/archive/refs/tags/v0.1.tar.gz"}

  masuperlib = callPackage masuperlib-src {};

in stdenv.mkDerivation {
    name = "masuperapp";
    src = ./.;
    nativeBuildInputs = [ cmake ];
    buildInputs = [ masuperlib ];
}

