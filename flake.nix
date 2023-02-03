{
  description = "Some utils for nix language";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  outputs = { self, nixpkgs }: { lib = import ./. nixpkgs.lib; };
}
