'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "32a753cd40727968c29938c1c32a2fe2",
"/": "32a753cd40727968c29938c1c32a2fe2",
"main.dart.js": "86ccb0c97329786fa299a8364f4e12d2",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "5bfaa8407b6bbc7d3ec933b8243f9786",
"assets/LICENSE": "e791e3aa37dd1b6df210fe3efb183398",
"assets/AssetManifest.json": "3a1a25fc13ec0260a7852156dbee4d3d",
"assets/FontManifest.json": "0a8d34b221a73ebaa0b1afbffbba0193",
"assets/fonts/Corben/Corben-Bold.ttf": "8f9921f9c52d3c25fd354d6e01f7b024",
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
