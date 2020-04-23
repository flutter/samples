'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "51839f812a32cce7ac40ca488295da30",
"/": "51839f812a32cce7ac40ca488295da30",
"main.dart.js": "509092ae28b7fe2ed1ea3409eb4c05e8",
"assets/LICENSE": "1f71df0e309cfe31d70da94bc9cf0383",
"assets/AssetManifest.json": "752c8e3f4304d36d239f2c923af773c1",
"assets/FontManifest.json": "580ff1a5d08679ded8fcf5c6848cece7",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/assets/preview.png": "b743324f80ce372be751c15d192bf08b",
"assets/assets/99.png": "12e834717963f504585a97def43969f5",
"assets/assets/10.png": "0e0f15801901200dd4b015fd8f26414b",
"assets/assets/35.png": "adcba14022a4d6cc03accde3c2853de1",
"assets/assets/20.png": "78f70ca0374373a20937c46e6bb1f241",
"assets/assets/p0.jpg": "927abb9bdc90417cc0804214ba5c1198",
"assets/assets/p1.jpg": "dae69d14475c8d97bdd5dac810f28f4a",
"assets/assets/30.png": "ac627311b29bb33af59f86b5af96303e",
"assets/assets/40.png": "011f2a540275808f0a829ffcb7461a77",
"assets/assets/45.png": "a5242198fb3a27da0ee3a6f9ca72ce8f"
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
