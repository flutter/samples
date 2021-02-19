#!/bin/sh
flutter pub run pigeon --input pigeon/schema.dart \
  --dart_out lib/api.dart \
  --objc_header_out ../ios_books/IosBooks/api.h \
  --objc_source_out ../ios_books/IosBooks/api.m \
  --objc_prefix BK \
  --java_out ../android_books/app/src/main/java/dev/flutter/example/books/Api.java \
  --java_package "dev.flutter.example.books"
