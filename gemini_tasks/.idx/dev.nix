{ pkgs }: {
  channel = "stable-23.11";
  packages = [
    pkgs.nodePackages.firebase-tools
    pkgs.jdk17
    pkgs.unzip
  ];
  idx = {
    extensions = [
      "Dart-Code.flutter"
      "Dart-Code.dart-code"
    ];
    workspace = {
      onCreate = {
        build-flutter = ''
          cd /home/user/"$WS_NAME"/android

            ./gradlew \
              --parallel \
              -Pverbose=true \
              -Ptarget-platform=android-x86 \
              -Ptarget=/home/user/"$WS_NAME"/lib/main.dart \
              -Pbase-application-name=android.app.Application \
              -Pdart-defines=RkxVVFRFUl9XRUJfQ0FOVkFTS0lUX1VSTD1odHRwczovL3d3dy5nc3RhdGljLmNvbS9mbHV0dGVyLWNhbnZhc2tpdC85NzU1MDkwN2I3MGY0ZjNiMzI4YjZjMTYwMGRmMjFmYWMxYTE4ODlhLw== \
              -Pdart-obfuscation=false \
              -Ptrack-widget-creation=true \
              -Ptree-shake-icons=false \
              -Pfilesystem-scheme=org-dartlang-root \
              assembleDebug

              adb -s localhost:5555 wait-for-device
            '';

        default.openFiles = [
            "lib/main.dart"
        ];
      };
    };
    previews = {
      enable = true;
      previews = {
        web = {
          command = ["flutter" "run" "--machine" "-d" "web-server" "--web-hostname" "0.0.0.0" "--web-port" "$PORT"];
          manager = "flutter";
        };
        android = {
          command = ["flutter" "run" "--machine" "-d" "android" "-d" "localhost:5555"];
          manager = "flutter";
        };
      };
    };
  };
}