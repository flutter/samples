# Code Health and Style Guide Adherence Log

This document tracks the ongoing effort to maintain code health and ensure all samples align with the official Flutter style guide. This workflow is performed periodically by an AI assistant.

## Workflow

The AI assistant performs the following steps for **each sample project** in the repository:

1.  **Analyze Git History:**
    *   Use `git log` to find the most recent commit to a `.dart` file within that sample's directory that was made by a human (i.e., not a bot).
    *   **Example command for a sample in `sample_name/`:**
        ```bash
        git log -1 --author='^(?!.*bot).*$' --pretty="format:%ad" --date=short -- ./sample_name/**/*.dart
        ```
    *   Parse the output to get the date of the last human commit.

2.  **Analyze the Code:** The assistant reads all the relevant `.dart` files within the selected sample's directory.

3.  **Assess Against Style Guide:** The assistant compares the code against the rules and patterns defined in `llm.md`. The assessment focuses on:
    *   Code organization and structure.
    *   Adherence to naming conventions.
    *   Proper use of Flutter and Dart patterns.
    *   State management best practices.
    *   Clarity, readability, and documentation.

4.  **Log Findings:** The assistant creates or updates the log entry for the sample. The log entry must include:
    *   The sample name.
    *   The date of the last human commit.
    *   The date of the AI assessment.
    *   A summary of the style guide adherence.
    *   A concrete, actionable list of opportunities for improvement.

---

## Sample Assessments

### sample: `provider_shopper`

*   **Last Human Commit:** 2024-11-20
*   **Last AI Assessment:** 2025-08-08
*   **Style Guide Adherence:** Good. The sample generally follows the recommended provider patterns and naming conventions. Documentation is present for most public members.
*   **Improvement Opportunities:**
    *   **[Refactor]** In `lib/models/cart.dart`, the `add` method could be simplified using a collection-if in the list literal.
    *   **[Style]** Some private members in `lib/models/catalog.dart` are missing the leading underscore.
    *   **[Doc]** The top-level `main` function in `lib/main.dart` is missing a doc comment.

### sample: `animations`

*   **Last Human Commit:** 2024-05-12
*   **Last AI Assessment:** 2025-08-08
*   **Style Guide Adherence:** Fair. The sample effectively demonstrates the animations library, but some older patterns are used. The code could be more readable with modern Dart features.
*   **Improvement Opportunities:**
    *   **[Clarity]** In `lib/main.dart`, the `build` method for the main widget is over 300 lines long. It should be broken down into smaller, more manageable private widget classes.
    *   **[Pattern]** The code uses `Future.then()` in a few places. These should be updated to use `async/await` for better readability.
    *   **[Naming]** Several variables use abbreviations (e.g., `btn` instead of `button`). These should be renamed for clarity.