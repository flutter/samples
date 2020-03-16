'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "51839f812a32cce7ac40ca488295da30",
"/main.dart.js": "5536302e0ebc9584b7e2d421c4ad348c",
"/assets/LICENSE": "b3faa0f87d90b82cee5b8849067f78da",
"/assets/AssetManifest.json": "9a9dc0fcf13a169b21599ded2002d794",
"/assets/FontManifest.json": "3c5f459c429d13fe7072fe429f68b654",
"/assets/fonts/Arkipelago.otf": "8d60d9104579c47ed7aed99f61cba541",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/fonts/OpenSans-Bold.ttf": "50145685042b4df07a1fd19957275b81",
"/assets/fonts/OpenSans-Regular.ttf": "629a55a7e793da068dc580d184cc0e31",
"/assets/assets/oil.png": "0d0d373d4d01c625809d1f28ecbb4427",
"/assets/assets/red_bell.png": "9eb6f83655c89a7fdfd2ff521a0c2b3c",
"/assets/assets/chili.png": "3689788fe53095366db2f6bcf02a8791",
"/assets/assets/preview.png": "17dae9b3d7e78b11f7fe8c2ff68b4004",
"/assets/assets/bokchoy.png": "5ce55ccae844b9074474a136aa073011",
"/assets/assets/green_bell.png": "373df11b149ea523ffd22053664db8b8",
"/assets/assets/beef_caldereta.jpg": "7c7bf11d9297b54d4930d0bf1892dcc6",
"/assets/assets/potato.png": "8154441acf8b33a637b14178c776cf24",
"/assets/assets/salt.png": "a3c2e4bd56222c9bd190b388bedfd3bd",
"/assets/assets/ground_pork.png": "85bac44629befe56359b0c6775e92ea8",
"/assets/assets/carrot.png": "4401bb5805931f67f168681b82782fbe",
"/assets/assets/squid.png": "e10b66dc85c03323c0550d1c5fd579bd",
"/assets/assets/flour.png": "2918647aa676caaece47a7d9d8b7d944",
"/assets/assets/onion.png": "347f96bf58f6ffcd8321276e9db8f24e",
"/assets/assets/butter.png": "771ff83bef2090b44ca2bf960542636b",
"/assets/assets/tomato.png": "0eb21f102cddac27e2e7ba53228bd69a",
"/assets/assets/beef.png": "c52cc4e2054ad0b54ae66d13e0118dc4",
"/assets/assets/pork_sisig.jpg": "1104ee422e330de6e6ad42c253a7e0cd",
"/assets/assets/raisins.png": "4dc449290a8a6bb80a5acfda1e02845a",
"/assets/assets/cheese.png": "a410babc50699ba0cfeff849b828906c",
"/assets/assets/garlic.png": "dfa782c4a86d7b79807dd65c645239cf",
"/assets/assets/sausage.png": "07d1eea2cd3fc8852c97a59112f418a1",
"/assets/assets/calamares.jpg": "5dbbd5626d6ca8ab998cbe6b4a7da2ca",
"/assets/assets/pochero.jpg": "861c8e05010307c1ac8280d6098d5802",
"/assets/assets/red_pepper.png": "b0813ceb27e056351c1164d848e903a8",
"/assets/assets/yellow_onion.png": "e93b2543131d2eb5e88edb8b22c4b67f",
"/assets/assets/lemon.png": "e5133b9f04dd894d8b20b52087f0f370",
"/assets/assets/banana.png": "37747de3b5e65eb5450a5c37529bbd71",
"/assets/assets/pork.png": "efd8cc008658263b23213e9fc77d5f49",
"/assets/assets/cabbage.png": "d5d7e5a9fd435a974944388ddfbd30ef",
"/assets/assets/egg.png": "7a7460c39df5d9c58335c76f5d3b2fc9",
"/assets/assets/black_pepper.png": "4d889fc5e27ad63d6b97106eae698370",
"/assets/assets/green_beans.png": "15f736eec27ee44bd14173cd37078895",
"/assets/assets/embutido.jpg": "65f78137fd53c4c5009426bf590f0d03"
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
