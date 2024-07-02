{ pkgs }: {
  channel = "stable-23.11";
  packages = [
    pkgs.nodePackages.firebase-tools
    pkgs.jdk17
    pkgs.unzip
  ];
  idx = {
    workspace = {
      # Runs when a workspace is first created with this `dev.nix` file
      onCreate = {
        # Open editors for the following files by default, if they exist.
        # The last file in the list will be focused.
        default.openFiles = [
            "lib/main.dart"
        ];
        # Include other scripts here, as needed, for example:
        # installDependencies = "npm install";
      };
      # To run something each time the workspace is (re)started, use the `onStart` hook
    };
    previews = {
      previews = {
        web = {
          command = [
            "flutter"
            "run"
            "--machine"
            "-d"
            "web-server"
            "--web-hostname"
            "0.0.0.0"
            "--web-port"
            "$PORT"
          ];
          manager = "flutter";
        };
        android = {
          command = [
            "flutter"
            "run"
            "--machine"
            "-d"
            "android"
            "-d"
            "emulator-5554"
          ];
          manager = "flutter";
        };
      };
    };
  };
}
