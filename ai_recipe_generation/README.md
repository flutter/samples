This is a demo app created for the Google I/O talk "Gemini API and Flutter: Practical, AI-driven apps with Google AI tools"

Check out the [the prompt we used on Google AI Studio](https://aistudio.google.com/app/prompts/1RsTAt6_N8BPhXbrrd8gSJcdeuYV834kf).

## Running the app 

Before running the app:
* Get an API key from [ai.google.dev](ai.google.dev).
* Create a Firebase project, and install the Flutter Firebase CLI, and configure the platforms that you want to run this app on. You can find instructions by following [steps 2-4 of the Get to know Firebase for Flutter](https://firebase.google.com/codelabs/firebase-get-to-know-flutter?hl=en#2) codelab.

Then, pass the API key in with dart define when running the app:

```bash
flutter run --dart-define=API_KEY=your_api_key
```


