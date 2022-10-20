# MacOS/Linux-only. Sadly, this is only helpful as documentation for Windows.

# LOCAL / DOCKER
run-server:
	# Depends on `make build`
	docker-compose up -d

stop-server:
	docker-compose stop

# Flutter
flutter-local:
	cd client && flutter run -d macos

test:
	(cd shared && dart test)
	(cd server && dart test)
	(cd client && flutter test)

# Docker
build:
	(cd server && dart pub get)
	docker build . -t codesharingserver

