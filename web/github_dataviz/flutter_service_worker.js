'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "51839f812a32cce7ac40ca488295da30",
"/": "51839f812a32cce7ac40ca488295da30",
"main.dart.js": "b530a40e569ff55981736f0dac529f77",
"assets/LICENSE": "9aa3199d111e4f71d159cfb56d197e16",
"assets/AssetManifest.json": "7ac1367789abe6eed8ffe5db603b0604",
"assets/FontManifest.json": "d751713988987e9331980363e24189ce",
"assets/assets/preview.png": "f41b57a2a2dab8d74ade52f9175b4a59",
"assets/github_data/contributors.json": "4f7b5d7640ca5ab67ee419df55a4833f",
"assets/github_data/comments.tsv": "062efd1b6e583ce9b71fd1c655f101cd",
"assets/github_data/forks.tsv": "307c19f9166eb30ffe34a8de50ac7b57",
"assets/github_data/commits.tsv": "684e345ed4d734f5b4a890098d175b37",
"assets/github_data/pull_requests.tsv": "583f0c3151b9234502a7037bf9735494",
"assets/github_data/stars.tsv": "f949dd28b49c2374880c22b2c8937a76"
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
