'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "9c473ce14d9afeb3525b5e9ea752c013",
"/main.dart.js": "e3948c1be316ef0fe0cf4e0586501050",
"/assets/LICENSE": "6cbe675ab6857da19a33d34b1e538579",
"/assets/asset/seattle.jpg": "b3497f8c3eac62f0f696e9423be862a0",
"/assets/asset/fonts/plaster/Plaster-Regular.ttf": "3bdb6c45e898b254e76cd6c164850f94",
"/assets/AssetManifest.json": "ec656a45bae2c3c371dd6a1476bd5c3e",
"/assets/FontManifest.json": "a397d647e4c43d7aa824b52dd59799bd",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/assets/preview.png": "37c9c831dc427f0c3b2d1e6dff5db38f"
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
