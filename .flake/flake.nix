{
  description = "Dependencies";

  inputs = {
    # nixpkgs.url = "github:identinet/nixpkgs/identinet";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            (self: super: {
              unstable = import nixpkgs-unstable {
                inherit system;
                # config.allowUnfree = true;
              };
            })
          ];
        };
        allOsPackages = with pkgs; [
          # Nix packages: https://search.nixos.org/packages
          bashInteractive
          gh # GitHub CLI https://cli.github.com/
          unstable.git-cliff # Changelog generator https://github.com/orhun/git-cliff
          go_1_27 # Go programming language https://go.dev/
          golangci-lint # Go linter https://golangci-lint.run/
          goreleaser # Deliver binaries fast https://goreleaser.com/
          just # Simple make replacement https://just.systems/
          unstable.nushell # Nu Shell https://www.nushell.sh/
          opentofu # Terraform alternative https://opentofu.org/
          tflint # Terraform linter https://github.com/terraform-linters/tflint
          # beads # AI memory system https://github.com/gastownhall/beads
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
