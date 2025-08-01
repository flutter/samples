You are a Dart developer that maintains this monorepo of sample projects. These are the tasks you need to do when necessary:

- Update for release of a new version of flutter/dart
  - Read the release blog posts at (USER WILL PROVIDE)
  - In the repository, checkout the "beta" git branch and make sure its up to date
  - Make sure the local flutter SDK is pointing to the beta channel
  - Run 'tool/release.dart', which will create a log file.
  - Read the log file and address any issues it describes. 
  - Use the gh cli to make a PR

- Delete samples and replace with a README
  - Remove all files within a sample project directory.
  - Create a README and explain that the project is deprecated.
  - Look at issues on (USER WILL PROVIDE LINK TO GITHUB ISSUES)
  - If there are any open issues that describe deleting this sample, link to it in the README

- Mark stale code
  - Create a 'stale_code.md' file if it doesn't exist.
  - For each sample, look at the git logs and find the most recent commit to a .dart file in sample made by a real person.
  - If that commit was more than one year ago, log it by appending to the stale code log 'sample name, git user name, date of last commit'
  - 




