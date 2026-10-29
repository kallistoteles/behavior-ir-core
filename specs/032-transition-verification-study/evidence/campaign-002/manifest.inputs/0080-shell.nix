let
  root = ../..;
  lock = builtins.fromJSON (builtins.readFile (root + "/flake.lock"));
  nixpkgs = builtins.fetchTree lock.nodes.nixpkgs.locked;
  overlay = builtins.fetchTree lock.nodes.rust-overlay.locked;
  pkgs = import nixpkgs { overlays = [ (import overlay) ]; };
  rust = pkgs.rust-bin.fromRustupToolchainFile (root + "/rust-toolchain.toml");
in pkgs.mkShell {
  packages = [ rust pkgs.lean4 (pkgs.python313.withPackages (p: [ p.jsonschema ]))
    pkgs.z3 pkgs.git pkgs.time pkgs.util-linux ];
  BEHAVIOR_Z3 = "${pkgs.z3}/bin/z3";
}
