{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-{{nix-version}}";
    blueprints.url = "github:nix-community/blueprints";
  };

  outputs =
    {
      self,
      nixpkgs,
      blueprints,
    }:
    blueprints.lib.mkFlake {
      inherit self;
      src = ./.;
    };
}
