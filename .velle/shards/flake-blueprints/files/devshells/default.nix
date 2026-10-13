{ pkgs, ... }:
pkgs.mkShell {
  packages = with pkgs; [
    {{packages}}
  ];
}
