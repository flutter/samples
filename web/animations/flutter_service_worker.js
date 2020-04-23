'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "e2634995892cc50d32890e8161bed4c4",
"/": "e2634995892cc50d32890e8161bed4c4",
"main.dart.js": "3a78688f1fe1891ea281ed1ccb09fc5f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "1294ed65db20bc1191041c5e3a73d8f9",
"assets/LICENSE": "c087695d2a4e6f0c56997de72e3e32d3",
"assets/AssetManifest.json": "23bb7325c9c562fafc5c7888b9c1a36f",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/assets/eat_sydney_sm.jpg": "3804fd7d8268200b04ef598820712ec9",
"assets/assets/eat_new_orleans.jpg": "8a7f4d7088fe0fe3b7ce11a182ec15bc",
"assets/assets/eat_sydney.jpg": "13122001b042ff7b153e02ee73e9a6b1",
"assets/assets/eat_cape_town.jpg": "a690ef9b7efc23187c963c8d875ffacd",
"assets/assets/eat_cape_town_sm.jpg": "7d0bc0ee785a2c3cc4064fae0834fadf",
"assets/assets/eat_new_orleans_sm.jpg": "75ea180c478714d6fde3d89ac35de62a"
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
