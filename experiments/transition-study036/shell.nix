let
  root = ../..;
  lock = builtins.fromJSON (builtins.readFile (root + "/flake.lock"));
  nixpkgs = builtins.fetchTree lock.nodes.nixpkgs.locked;
  overlay = builtins.fetchTree lock.nodes.rust-overlay.locked;
  pkgs = import nixpkgs { system = "x86_64-linux"; config = {}; overlays = [ (import overlay) ]; };
  rust = pkgs.rust-bin.fromRustupToolchainFile (root + "/rust-toolchain.toml");
  python = pkgs.python313.withPackages (p: [ p.jsonschema ]);
  packages = [ rust pkgs.lean4 pkgs.stdenv.cc python
    pkgs.z3 pkgs.git pkgs.time pkgs.util-linux pkgs.bashInteractive
    pkgs.stdenv.cc.bintools pkgs.coreutils pkgs.gnugrep pkgs.gnused
    pkgs.findutils pkgs.diffutils pkgs.gawk ];
  # A drvPath carries a deep string context: interpolating it into an
  # environment variable would demand every output of its build closure.
  # This field is descriptive metadata only. The output field and packages
  # retain the actual runtime dependency and are checked by the capture.
  provider = package: {
    output = toString package;
    derivation = builtins.unsafeDiscardStringContext package.drvPath;
  };
  providers = {
    inherit (builtins.mapAttrs (_: provider) {
      inherit rust python;
      lean = pkgs.lean4;
      bash = pkgs.bashInteractive;
      cc = pkgs.stdenv.cc;
      cc_real = pkgs.stdenv.cc.cc;
      binutils = pkgs.stdenv.cc.bintools;
      binutils_real = pkgs.stdenv.cc.bintools.bintools;
      z3 = pkgs.z3;
      git = pkgs.git;
      coreutils = pkgs.coreutils;
      grep = pkgs.gnugrep;
      sed = pkgs.gnused;
      find = pkgs.findutils;
      diff = pkgs.diffutils;
      awk = pkgs.gawk;
      util_linux = pkgs.util-linux;
      time = pkgs.time;
    }) rust python lean bash cc cc_real binutils binutils_real z3 git coreutils grep sed find diff awk util_linux time;
  };
  tool = owner: name: arguments: contains: {
    path = "${providers.${owner}.output}/bin/${name}";
    provider = owner;
    version_args = arguments;
    version_contains = contains;
  };
  tools = {
    cargo = tool "rust" "cargo" [ "--version" ] "cargo 1.98.1";
    rustc = tool "rust" "rustc" [ "-vV" ] "rustc 1.98.1";
    rustdoc = tool "rust" "rustdoc" [ "--version" ] "rustdoc 1.98.1";
    rustfmt = tool "rust" "rustfmt" [ "--version" ] "rustfmt";
    cargo-fmt = tool "rust" "cargo-fmt" [] "";
    cargo-clippy = tool "rust" "cargo-clippy" [] "";
    clippy-driver = tool "rust" "clippy-driver" [] "";
    lean = tool "lean" "lean" [ "--version" ] "4.30.0";
    leanchecker = tool "lean" "leanchecker" [] "";
    lake = tool "lean" "lake" [ "--version" ] "4.30.0";
    bash = tool "bash" "bash" [ "--version" ] "GNU bash";
    sh = tool "bash" "sh" [] "";
    python3 = tool "python" "python3" [ "--version" ] "Python 3.13";
    z3 = tool "z3" "z3" [ "--version" ] "Z3 version";
    git = tool "git" "git" [ "--version" ] "git version";
    cc = tool "cc" "cc" [ "--version" ] "";
    gcc = tool "cc" "gcc" [] "";
    "c++" = tool "cc" "c++" [] "";
    ar = tool "binutils" "ar" [] "";
    as = tool "binutils" "as" [] "";
    ld = tool "binutils" "ld" [] "";
    grep = tool "grep" "grep" [] "";
    sed = tool "sed" "sed" [] "";
    find = tool "find" "find" [] "";
    xargs = tool "find" "xargs" [] "";
    cmp = tool "diff" "cmp" [] "";
    diff = tool "diff" "diff" [] "";
    awk = tool "awk" "awk" [] "";
  } // builtins.listToAttrs (map (name: {
    inherit name;
    value = tool "coreutils" name [] "";
  }) [ "basename" "dirname" "mktemp" "realpath" "tr" "cut" "sha256sum"
       "cp" "rm" "mkdir" "cat" "head" "tail" "sort" "tee" "readlink"
       "stat" "uname" "timeout" "wc" "touch" ]);
in
assert pkgs.lean4.version == "4.30.0";
assert builtins.all (p: !(builtins.hasContext p.derivation)) (builtins.attrValues providers);
pkgs.mkShell {
  inherit packages;
  BEHAVIOR_Z3 = "${pkgs.z3}/bin/z3";
  CORE036_Q_PYTHON = "${python}/bin/python3";
  CORE036_Q_EXPLICIT_PATH = pkgs.lib.makeBinPath packages;
  CORE036_Q_RUNTIME_SPEC = builtins.toJSON {
    format = "core036.quality-shell-expectations.v2";
    inherit providers tools;
    source_trees = { nixpkgs = toString nixpkgs; rust_overlay = toString overlay; };
    jsonschema = { output = toString pkgs.python313Packages.jsonschema;
      version = pkgs.python313Packages.jsonschema.version; };
  };
  shellHook = ''
    export RAYON_NUM_THREADS=1
  '';
}
