{
  description = "Behavior Core: the deterministic semantic kernel of Behavior IR";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, rust-overlay }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" ];
      forAll = f: nixpkgs.lib.genAttrs systems (system:
        f (import nixpkgs { inherit system; overlays = [ rust-overlay.overlays.default ]; }));
    in
    {
      devShells = forAll (pkgs:
        let
          rust = pkgs.rust-bin.fromRustupToolchainFile ./rust-toolchain.toml;
          python = pkgs.python313;
        in
        {
          default = pkgs.mkShell {
            packages = [ rust python pkgs.z3 pkgs.zig pkgs.cargo-zigbuild pkgs.gh ];
            shellHook = ''
              export PATH="$PWD/target/debug:$PATH"
              export BEHAVIOR_Z3="${pkgs.z3}/bin/z3"
            '';
          };
        });
    };
}
