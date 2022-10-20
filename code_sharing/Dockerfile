# Use latest stable channel SDK.
FROM dart:stable AS build

# Copy shared code.
WORKDIR /shared
COPY /shared/. .

# Copy server code.
WORKDIR /server
COPY /server/. .

# Resolve app dependencies.
RUN dart pub get

# AOT compile app.
RUN dart compile exe bin/server.dart -o bin/server

# Build minimal serving image from AOT-compiled `/server`
# and the pre-built AOT-runtime in the `/runtime/` directory of the base image.
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /server/bin/server /app/bin/

# Start server.
EXPOSE 8080
CMD ["/app/bin/server"]
