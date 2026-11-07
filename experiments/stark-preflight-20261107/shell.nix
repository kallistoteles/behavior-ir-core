let
  root = ../..;
  lock = builtins.fromJSON (builtins.readFile (root + "/flake.lock"));
  nixpkgs = builtins.fetchTree lock.nodes.nixpkgs.locked;
  overlay = builtins.fetchTree lock.nodes.rust-overlay.locked;
  pkgs = import nixpkgs { overlays = [ (import overlay) ]; };
  rust = pkgs.rust-bin.fromRustupToolchainFile (root + "/rust-toolchain.toml");
in pkgs.mkShell {
  packages = [ rust pkgs.stdenv.cc pkgs.python313 pkgs.pkg-config pkgs.cmake ];
  CORE_RISC0_LOADER = pkgs.stdenv.cc.bintools.dynamicLinker;
  CORE_RISC0_LIB_PATH = pkgs.lib.makeLibraryPath [ pkgs.glibc pkgs.stdenv.cc.cc pkgs.zlib ];
  RAYON_NUM_THREADS = "1";
}
