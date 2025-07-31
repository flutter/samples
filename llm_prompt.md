# Instructions for Updating Dart SDK to Beta in Flutter Projects

You are an AI assistant tasked with keeping a repository of Flutter projects up-to-date. Your goal is to update the Dart SDK constraint in all `pubspec.yaml` files to the latest **beta** version.

## Your Task

1.  **Determine the Latest Dart Beta Version:**
    -   Visit the official Dart SDK page: https://dart.dev/get-dart
    -   Identify the current beta version number. It will look something like `3.x.x-x.x.beta`.

2.  **Locate all `pubspec.yaml` files:**
    -   Scan the entire repository to find every `pubspec.yaml` file.

3.  **Update the SDK Constraint:**
    -   For each `pubspec.yaml` file, locate the `environment` section.
    -   It will look like this:
        ```yaml
        environment:
          sdk: '>=2.17.0 <3.0.0'
          flutter: '>=1.17.0'
        ```
        -   You need to update the `sdk` constraint. You should change it to allow the new beta version. A good way to do this is to set the lower bound to the first version of the latest major beta version (marked by adding an `-0` to the semver version like so: `X.X.X-0`) and the upper bound to the next major version. For example, if the new beta version is `3.4.0-257.0.beta`, you should update the constraint to:
        ```yaml
        environment:
          sdk: '>=3.4.0-0 <4.0.0'
        ```
    -   **Important:**
        -   Do not change the `flutter` constraint.
        -   Preserve the formatting and indentation of the `pubspec.yaml` file.
        -   The exact version you find on the Dart website should be used. The example above is just for illustration.

## Example Workflow

1.  **LLM:** *Fetches [https://dart.dev/get-dart#beta-channel](https://dart.dev/get-dart#beta-channel) and finds the latest beta version is `3.5.0-123.0.beta`.*
2.  **LLM:** *Finds `/path/to/project1/pubspec.yaml`.*
3.  **LLM:** *Reads the file and finds:*
    ```yaml
    environment:
      sdk: '>=3.3.0 <4.0.0'
    ```
4.  **LLM:** *Updates it to:*
    ```yaml
    environment:
      sdk: '>=3.5.0-123.0.beta <4.0.0'
    ```
5.  **LLM:** *Repeats for all other `pubspec.yaml` files.*

Please proceed with this task.


Next: 

- Run the CLI command `flutter channel beta` to ensure the Flutter SDK on my machine is using the latest beta
- Run the CI running the bash file at /tool/flutter_ci_script_stable.sh