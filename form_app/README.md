# form_app

A sample demonstrating different types of forms and best practices.

## Sign In with HTTP
[*lib/src/sign_in_http.dart*](lib/src/sign_in_http.dart)

A sign in form using `package:http` to send a request.

## Form widgets
[*lib/src/form_widgets.dart*](lib/src/form_widgets.dart)

A stylized form that uses widgets like TextField, DatePicker, Slider, Checkbox,
and Switch.

## Autofill
[*lib/src/autofill.dart*](lib/src/autofill.dart)

A form that uses AutofillGroup to auto-fill the users name, email, and address.

In order to use Autofill in a browser, your app needs to be hosted with HTTPS.
If you would like to test locally, you can build the app in release mode
(`flutter run -d chrome --release --web-port=5000`) and use
[ngrok](https://ngrok.com/) to create an HTTPS url for your local app (`ngrok
http 5000`)

## Validation
[*lib/src/validation.dart*](lib/src/validation.dart)

A form that alerts the user if the data entered is invalid.

