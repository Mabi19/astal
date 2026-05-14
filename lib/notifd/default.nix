{
  mkAstalPkg,
  pkgs,
  self,
}: let
  inherit (pkgs.stdenv.hostPlatform) system;
  inherit (self.packages.${system}) quarrel;
in
  mkAstalPkg {
    pname = "astal-notifd";
    src = ./.;
    packages = [
      quarrel
      pkgs.json-glib
      pkgs.gdk-pixbuf
    ];

    libname = "notifd";
    authors = "Aylur";
    name = "AstalNotifd";
    description = "Notification daemon";
  }
