let
  base = import ./shell.nix;
  root = ../..;
  lock = builtins.fromJSON (builtins.readFile (root + "/flake.lock"));
  nixpkgs = builtins.fetchTree lock.nodes.nixpkgs.locked;
  pkgs = import nixpkgs {};
in base.overrideAttrs (old: {
  nativeBuildInputs = (old.nativeBuildInputs or []) ++ [ pkgs.clang ];
})
