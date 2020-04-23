'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "9c473ce14d9afeb3525b5e9ea752c013",
"/": "9c473ce14d9afeb3525b5e9ea752c013",
"main.dart.js": "29b1ae45e0352be913f66aa8bf28fd10",
"assets/LICENSE": "61939e256cd77686656841ca75982d1c",
"assets/asset/seattle.jpg": "b3497f8c3eac62f0f696e9423be862a0",
"assets/asset/fonts/plaster/Plaster-Regular.ttf": "3bdb6c45e898b254e76cd6c164850f94",
"assets/AssetManifest.json": "ecb4d39e576209dc5ae70fad278c3df6",
"assets/FontManifest.json": "a397d647e4c43d7aa824b52dd59799bd",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16"
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
