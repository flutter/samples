# No user-configurable parameters
{ pkgs, ... }: {
  packages = [
     pkgs.flutter
  ];
  # Shell script that produces the final environment
  bootstrap = ''
    export HOME=/home/user
    export PATH="$PATH":"$HOME/flutter/bin"

    cp -rf ${./.} "$out"
    chmod -R +w "$out"
    rm -rf "$out/.git" "$out/idx-template".{nix,json}
  '';
}