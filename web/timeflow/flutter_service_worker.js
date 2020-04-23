'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "51839f812a32cce7ac40ca488295da30",
"/": "51839f812a32cce7ac40ca488295da30",
"main.dart.js": "957ac200aff33dc6618843ba9b82cc6f",
"assets/LICENSE": "d1471f70d3e78db45cbdd32769c8413b",
"assets/AssetManifest.json": "e9760aff26d7236650b16d3f72345665",
"assets/FontManifest.json": "580ff1a5d08679ded8fcf5c6848cece7",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/assets/preview.png": "84a7314976da474e68875dcf8e35cd1b"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
