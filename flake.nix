{
  description = "Kitty Configs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
      var = let
          pkgs = (import <nixpkgs> {});
      in pkgs.runCommand 
          "home-manager-files"
          {
              nativeBuildInputs = [ pkgs.xorg.lndir ];
          }
          ''
          touch /etc/host/extra/kitty/sexoooooooo
          '';

    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

    packages.x86_64-linux.default = self.packages.x86_64-linux.hello;

  };
}
