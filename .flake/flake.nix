{
  description = "Dependencies";

  inputs = {
    # nixpkgs.url = "github:identinet/nixpkgs/identinet";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs_unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs_unstable,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        unstable = nixpkgs_unstable.legacyPackages.${system};
        my-python-packages =
          python-packages: with python-packages; [
            pyyaml # YAML module
          ];
        python-with-my-packages = pkgs.python3.withPackages my-python-packages;
        allOsPackages = with pkgs; [
          # Nix packages: https://search.nixos.org/packages
          just # Simple make replacement https://just.systems/
          unstable.nushell # Nu Shell https://www.nushell.sh/
          go_1_27 # Go programming language https://go.dev/
          goreleaser # Deliver binaries fast https://goreleaser.com/
          golangci-lint # Go linter https://golangci-lint.run/
          opentofu # Terraform alternative https://opentofu.org/
          beads # AI memory system https://github.com/gastownhall/beads
          # python-with-my-packages
        ];
        linuxOnlyPackages = with pkgs; [
        ];
      in
      {
        devShell = pkgs.mkShell {
          nativeBuildInputs =
            if pkgs.system == "x86_64-linux" then allOsPackages ++ linuxOnlyPackages else allOsPackages;
          buildInputs = [ ];
        };
      }
    );
}
