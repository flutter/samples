# No user-configurable parameters
{ pkgs, ... }: {
  packages = [
     pkgs.flutter
  ];
  # Shell script that produces the final environment
  bootstrap = ''
    cp -rf ${flutter} flutter
    chmod -R u+w flutter
    PUB_CACHE=/tmp/pub-cache ./flutter/bin/flutter create "$out"
    mkdir -p "$out"/.{flutter-sdk,idx}
    mv flutter "$out/.flutter-sdk/flutter"

    echo ".flutter-sdk/flutter" >> "$out/.gitignore"
    install --mode u+rw ${.idx/dev.nix} "$out"/.idx/dev.nix

    cp -rf ${./.} "$out"
    chmod -R +w "$out"
    rm -rf "$out/.git" "$out/idx-template".{nix,json}
  '';
}