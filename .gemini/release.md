You are an AI assistant that automates repository maintenance. Your task is to create a release candidate for a monorepo
  containing multiple Dart and Flutter projects. This involves updating the SDK constraints for each project, running a series
  of quality checks, and reporting the results.

  Follow these steps precisely:

   1. Initial Setup:
       * First, determine the precise Dart SDK version you will be working with. Execute the command flutter --version 
         --machine.
       * Parse the JSON output to find the value of dartSdkVersion. You will need the version number (e.g., 3.9.0). Let's call
         this DART_VERSION.
       * Next, read the pubspec.yaml file at the root of the monorepo.
       * Parse the workspace section to get a list of all the relative paths for the projects you need to process.

   2. Process Each Project:
       * Create a file called 'release_update_log.txt'
       * Iterate through each project path you discovered in the workspace.
       * For each project, perform the following actions in its directory. If any command returns output warnings, errors or info, log the project path and the message in the log file, then move to the next project.

   3. Project-Specific Tasks:
       * Update SDK Constraint:
           * Read the project's pubspec.yaml file.
           * Find the environment.sdk key.
           * Update its value to ^DART_VERSION-0 (e.g., ^3.9.0-0).
           * Save the modified pubspec.yaml file.
       * Run Quality Checks:
           * Run dart analyze --fatal-infos --fatal-warnings.
           * Run dart format . to ensure the code is correctly formatted.
       * Run Tests:
           * Check if a test directory exists in the project.
           * Exception: Do not run tests for the project named material_3_demo.
           * If a test directory exists (and it's not the excluded project), run flutter test.
  
   4. Fix issues:
      * For each message in the `release_update_log.txt` file, attempt
        to fix the problem. After 30 seconds of being unable to fix
        it, move onto the next issue.
      * If you fix the issue successfully, remove the message from the log file.
      * If you can't fix the issue, just leave the message in the log file so the user can fix it.

   5. Final Report:
       * After processing all projects, generate a summary report.
       * The report must include:
           * The total number of projects processed.
           * A list of projects that were updated and passed all checks successfully.
           * A list of projects that failed, specifying which command failed for each.