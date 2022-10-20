
# Code Sharing



A full-stack Dart application using Flutter on the client and
[`shelf`](https://pub.dev/packages/shelf) on the server. The Flutter app
itself is still the counter app, but the actual number is stored on the server
and incremented over HTTP using transport data classes understood by both the
Flutter client and shelf server.

## Goals

The goal of this sample is to demonstrate the mechanics of sharing business
logic between a Flutter client and a Dart server. The sample also includes a
slightly modified Dockerfile which is required to build a Docker image from
a Dart app containing nested packages.

## Project Structure

The sample's project structure is as follows:

```
code_sharing/
  # Flutter app
  client/
    lib/
      ...
    pubspec.yaml
    ...
  # Shelf
  server/
    bin/
      server.dart
    pubspec.yaml
    Dockerfile
  # Common business logic
  shared/
    pubspec.yaml
    lib/
      ...
```

## Recreating this on your own

Recreating this introductory project for yourself can be done in several steps.

1. Create a parent directory, likely sharing a name with your project or
product, which will contain everything.
2. Within that directory, run `flutter create client`. You may also name this
Flutter project `app`, `mobile`, `<project-name>-app` or anything else that
seems appropriate. At this point, your folder structure should look like this:
	```
	my_project/
	  client/
	    lib/
	      main.dart
	    pubspec.yaml
	    ...
	```
3. From the same location where you ran `flutter create`, run
`dart create -t server-shelf server`. You may also name this Shelf project,
`backend`, `api`, `<project-name>-server`, or anything else that seems
appropriate. At this point, your folder structure should look like this:
	```
	my_project/
	  client/
	    lib/
	      main.dart
	    pubspec.yaml
	    ...
	  server/
	    bin/
	      server.dart
	    Dockerfile
	    pubspec.yaml
	    ...
	```
4. Enter your server directory (`cd server`), and run `dart create -t package shared`.
You may also name this package `common`, `domain`, `<project-name>-shared`, or
anything else that seems appropriate. At this point, your folder structure should
resemble the sample:
	```
	my_project/
	  client/
	    lib/
	      main.dart
	    pubspec.yaml
	    ...
	  server/
	    bin/
	      server.dart
	    shared/
	      lib/
	        src/
	          ...
	        shared.dart
	      pubspec.yaml
	      ...
	    Dockerfile
	    pubspec.yaml
	    ...
	```
5. Next, begin granting access to your shared code by making the following
edits to your Flutter app's `pubspec.yaml` file. Open that file
(`client/pubspec.yaml`) and add the following dependency under the
`dependencies` block:

    ```
    dependencies:
      # Add these two lines:
      shared:
        path: ../server/shared
    ```
6. Next, finish granting access to your shared code by making the following
edits to your server's `pubspec.yaml` file. Open that file
(`server/pubspec.yaml`) and add the following dependency under the
`dependencies` block:

    ```
    dependencies:
      # Add these two lines:
      shared:
        path: ./shared
    ```
7. The final step is to adjust your `Dockerfile`, as it can no longer
successfully run `dart pub get` after only copying over the `pubspec.yaml`
file (that command now requires the entirety of your `shared` directory to be
present.

- Find the line that says `COPY  pubspec.*  ./`, and change it to `COPY . .`.

With that, you're ready to build and run the app.

## Running the sample

To run the sample, or an equivalent you've reconstructed yourself, choose a
runtime method below based on your needs.

### From the CLI

In one terminal window, run the following commands:

```sh
cd my_project/server
dart run bin/server.dart
```

In a separate terminal window, run the following commands:

```sh
cd my_project/client
flutter run
```

> Note: If you named your mobile client and backend servers something other
than `client` and `server`, you will need to substitute in those values above.

### Build and run with Docker

To build your server's Docker image, run the following commands in a terminal
window:

```sh
cd my_project/server
docker build . -t my_project_server
```

To run that image as a Docker container, run the following commands in a
terminal window:

```sh
docker run -it my_project_server
```

### Build and run with `docker-compose`

If you have [`docker-compose`](https://docs.docker.com/compose/install/)
installed on your machine, you can run the following command to build and
launch your server:

```sh
cd my_project
docker-compose up -d
```

And then later stop the server with:

```sh
docker-compose stop
```