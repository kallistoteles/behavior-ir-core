let
  root = ../..;
  lock = builtins.fromJSON (builtins.readFile (root + "/flake.lock"));
  nixpkgs = builtins.fetchTree lock.nodes.nixpkgs.locked;
  overlay = builtins.fetchTree lock.nodes.rust-overlay.locked;
  pkgs = import nixpkgs { overlays = [ (import overlay) ]; };
  rust = pkgs.rust-bin.fromRustupToolchainFile (root + "/rust-toolchain.toml");
in
assert pkgs.lean4.version == "4.30.0";
pkgs.mkShell {
  packages = [ rust pkgs.lean4 pkgs.stdenv.cc
    (pkgs.python313.withPackages (p: [ p.jsonschema ]))
    pkgs.z3 pkgs.git pkgs.time pkgs.util-linux ];
  BEHAVIOR_Z3 = "${pkgs.z3}/bin/z3";
  shellHook = ''
    export RAYON_NUM_THREADS=1
  '';
}
