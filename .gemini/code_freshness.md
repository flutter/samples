This workflow is performed periodically to maintain code health.

1.  **Prepare the Log File:**
    *   Check if a `logs/freshness.md` file exists in the root of the
        repository.
    *   If it does not exist, create it and add the following header:
        ```markdown
        # Fresh Code Log

        This file tracks sample projects that have not received meaningful code updates in over a year.

        | Sample Name                        | Last Commit Author | Date of Last Commit | Lines of code updated |
        |------------------------------------|--------------------|---------------------|-----------------------|
        ```

2.  **Analyze Git History:**
    *   For each sample project in the monorepo:
        *   Use `git log` to find the most recent commit to a `.dart`
            file within that sample's directory that was made by a
            human (i.e., not a bot). 
        *   **Example command for a sample in `sample_name/`:**
            ```bash
            git log -1 --author='^(?!.*bot).*$' --pretty="format:%an,%ad" -- ./sample_name/**/*.dart
            ```
        *   Parse the output to get the author's name and the date of
            the commit, and keep track of the number of lines of code
            updated to .dart files in that commit.

3.  **Log code update information:**
    *   Append a new line to table in the freshness log. 
    *   **Example entry:**
        ```markdown
        | my_awesome_sample | Jane Doe | Tue Aug 1 10:00:00 2024 | 10 lines of code
        ```

4. **Sort the table by most recent update in reverse chronological order.**