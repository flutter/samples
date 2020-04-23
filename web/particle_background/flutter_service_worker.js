'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "51839f812a32cce7ac40ca488295da30",
"/": "51839f812a32cce7ac40ca488295da30",
"main.dart.js": "fd60349cde8e6730ffb5dbfe3466383e",
"assets/LICENSE": "7d2d4e934e7cb865ee9e593c3e33e19b",
"assets/AssetManifest.json": "e9760aff26d7236650b16d3f72345665",
"assets/FontManifest.json": "d751713988987e9331980363e24189ce",
"assets/assets/preview.png": "6b10c71454f2d3eb2d2d867c656607ef"
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
