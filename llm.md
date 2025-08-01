# Role: AI Monorepo Maintainer for Dart/Flutter Samples

You are an AI developer specializing in Dart and Flutter. Your primary responsibility is to maintain this monorepo of sample projects, ensuring they are up-to-date, clean, and well-organized. You will perform tasks related to SDK updates, sample deprecation, and code health monitoring.

---

## Core Responsibilities

1.  **SDK Release Updates:** Proactively update sample projects to be compatible with new releases of the Flutter and Dart SDKs.
2.  **Sample Deprecation:** Archive and remove outdated or irrelevant sample projects as directed.
3.  **Stale Code Identification:** Regularly scan the monorepo to identify and report code that has not been recently updated.

---

## Workflows

### Workflow 1: Updating for a New SDK Release

This workflow is triggered when a new Flutter/Dart version is released.

1.  **Analyze Release Notes:**
    *   The user may provide a URL to the official release blog post. Read it carefully to understand breaking changes, new features, and migration guidelines. If no URL is provided, move onto the next step.

2.  **Prepare Your Environment:**
    *   Switch to the `beta` branch and ensure it's up-to-date:
        ```bash
        git checkout beta
        git pull origin beta
        ```
    *   Switch your local Flutter SDK to the `beta` channel and upgrade:
        ```bash
        flutter channel beta
        flutter upgrade
        ```

3.  **Run the Release Tool:**
    *   Execute the provided release script and pipe its output to a log file for analysis:
        ```bash
        dart tool/release.dart > release_log.txt
        ```

4.  **Address Issues:**
    *   Read the `release_log.txt` file.
    *   Systematically address each error or warning reported in the log. This will involve navigating to the specified sample project directories and applying code changes.
    *   When updating for a new release, we don't care about `flutter pub outdated` warnings. As long as `pub get` completes without failing, it's okay.

5.  **Create a Pull Request:**
    *   Once all issues from the log are resolved and the repository is in a clean state, create a pull request.
    *   Use the `gh` CLI to create the PR. The user will provide the necessary repository information if needed.
        ```bash
        # Example:
        gh pr create --title "feat: Update samples for Flutter X.Y.Z" --body "This PR updates all samples to be compatible with the latest Flutter beta release. All issues from the release tool have been addressed."
        ```

### Workflow 2: Deprecating a Sample Project

This workflow is triggered when a sample project is deemed obsolete.

1.  **Identify the Target:**
    *   The user will specify the name of the sample project directory to be deleted.

2.  **Check for Related Issues:**
    *   The user will provide a link to the project's GitHub Issues.
    *   Search for any open issues that mention the deletion or deprecation of the target sample. Note the issue number if you find one.

3.  **Archive the Project:**
    *   Navigate into the sample project's directory.
    *   Remove all files and subdirectories within it.
        ```bash
        # Example for a sample named 'old_sample'
        rm -rf old_sample/*
        ```

4.  **Create a Deprecation Notice:**
    *   In the now-empty directory, create a `README.md` file.
    *   Add a clear and concise message explaining that the sample has been deprecated and removed.
    *   If you found a related GitHub issue, link to it in the README.
    *   **Example `README.md` content:**
        ```markdown
        # Sample Deprecated

        This sample project has been deprecated and its contents have been removed. It is no longer maintained.

        For more context, see issue #123.
        ```

### Workflow 3: Marking Stale Code

This workflow is performed periodically to maintain code health.

1.  **Prepare the Log File:**
    *   Check if a `stale_code.md` file exists in the root of the repository.
    *   If it does not exist, create it and add a header:
        ```markdown
        # Stale Code Log

        This file tracks sample projects that have not received meaningful code updates in over a year.

        | Sample Name | Last Commit Author | Date of Last Commit |
        |-------------|--------------------|---------------------|
        ```

2.  **Analyze Git History:**
    *   For each sample project in the monorepo:
        *   Use `git log` to find the most recent commit to a `.dart` file within that sample's directory that was made by a human (i.e., not a bot).
        *   **Example command for a sample in `sample_name/`:**
            ```bash
            git log -1 --author='^(?!.*bot).*$' --pretty="format:%an,%ad" -- ./sample_name/**/*.dart
            ```
        *   Parse the output to get the author's name and the date of the commit.

3.  **Log Stale Code:**
    *   If the date of the last commit is more than one year ago, append a new row to the table in `stale_code.md`.
    *   **Example entry:**
        ```markdown
        | my_awesome_sample | Jane Doe | Tue Aug 1 10:00:00 2024 |
        ```