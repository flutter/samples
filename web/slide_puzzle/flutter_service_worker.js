'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "7f64a17e6764e8896b44e1edcf323cc6",
"index.html": "0bf388ffbb7e25d57cac0259aed9dac9",
"/": "0bf388ffbb7e25d57cac0259aed9dac9",
"favicon.png": "7a26ea9d4e61122fc023b84e5acdb148",
"assets/fonts/MaterialIcons-Regular.otf": "7e7a6cccddf6d7b20012a548461d5d81",
"assets/AssetManifest.json": "1b1637a32286fee38b7df3f3ce2da987",
"assets/FontManifest.json": "a6a35a39ab693849dcde3aba2d4304a7",
"assets/assets/fonts/GoogleSans-Bold.ttf": "c0370e8a74992bab73461f8348e3b369",
"assets/assets/fonts/GoogleSans-Italic.ttf": "b08c7421b2d5350ea3003c8f38932601",
"assets/assets/fonts/GoogleSans-BoldItalic.ttf": "aebc8fe5e393970fa3d468524e64b670",
"assets/assets/fonts/GoogleSans-Regular.ttf": "51134713ade7b1f137e06ce395d39d40",
"assets/assets/images/timer_icon.png": "284049eb59c25888ebe6ecf864728727",
"assets/assets/images/logo_flutter_white.png": "fe99d806f7819c9ef2d2c9a1dc350693",
"assets/assets/images/twitter_icon.png": "f9a8b83fc280f6a6363783cdbdd81573",
"assets/assets/images/simple_dash_small.png": "b3f2ec92db7be8297f529f94d8e38136",
"assets/assets/images/simple_dash_medium.png": "4e2fd9dee5fbd150653f06a83be3accf",
"assets/assets/images/logo_flutter_color.png": "496548be6768a0945cafe0cf7c12b389",
"assets/assets/images/audio_control/blue_dashatar_off.png": "fb9cf31f68997341215e5484252350fe",
"assets/assets/images/audio_control/simple_off.png": "ecac9ec0e8dc5d526e204651b5e62dcc",
"assets/assets/images/audio_control/yellow_dashatar_off.png": "f1606e5fb255a5a48dbadc722a983060",
"assets/assets/images/audio_control/simple_on.png": "63e24186aec21d19e6f82f88d656a951",
"assets/assets/images/audio_control/dashatar_on.png": "927040d878eeeb9c0700d50fac87674f",
"assets/assets/images/audio_control/green_dashatar_off.png": "8aae7e7135d47a7536b2cca91d877c2a",
"assets/assets/images/dashatar/blue/12.png": "f5c7df6eeb615606ec8a0824cf5edc01",
"assets/assets/images/dashatar/blue/11.png": "7cc92a508afb5f8f11398623dc87b13d",
"assets/assets/images/dashatar/blue/2.png": "f3175c4deda4e4da7b89fd70f4d47b20",
"assets/assets/images/dashatar/blue/15.png": "a7d13e26458a3945df47c5f867d91399",
"assets/assets/images/dashatar/blue/4.png": "2db99be298e081eb8e005c1c607ec855",
"assets/assets/images/dashatar/blue/6.png": "6f15995595827885e26620f0d28edaff",
"assets/assets/images/dashatar/blue/8.png": "cd05b0e2b93549f4aac372874658161e",
"assets/assets/images/dashatar/blue/1.png": "05d5a28959eb68afdc257d86f81df8df",
"assets/assets/images/dashatar/blue/10.png": "4a8b897b54605febe3e52fc4e4af7be2",
"assets/assets/images/dashatar/blue/9.png": "a69e1869147b271c707255945b79b327",
"assets/assets/images/dashatar/blue/5.png": "bf5a87a649c90a2063fcee6cc1d2bcfe",
"assets/assets/images/dashatar/blue/14.png": "b3930b781f602a18fecbc287eb8de536",
"assets/assets/images/dashatar/blue/7.png": "33a6c0c5e4e019fba561e399494d4df8",
"assets/assets/images/dashatar/blue/3.png": "d3fe8adeec6576a60714495345c71536",
"assets/assets/images/dashatar/blue/13.png": "c0c339eb522ed4ee91842291b86bc083",
"assets/assets/images/dashatar/success/yellow.png": "463f9b0eddcae6089e8fd33f3ded3164",
"assets/assets/images/dashatar/success/green.png": "7c284d7b36bb5388c4d87b1dd5cf3f88",
"assets/assets/images/dashatar/success/blue.png": "993266c9723f234300d052cd4fda43d1",
"assets/assets/images/dashatar/green/12.png": "3eb9c7dce99bbf25206d3528651fc342",
"assets/assets/images/dashatar/green/11.png": "cbde174349a89fb85b55d53f31fb113a",
"assets/assets/images/dashatar/green/2.png": "f253681e729a485077e089ea0f6af8f2",
"assets/assets/images/dashatar/green/15.png": "dd8360ee77b91eb98590d38fe242f574",
"assets/assets/images/dashatar/green/4.png": "e44d562d1f26717216974e2604649dbb",
"assets/assets/images/dashatar/green/6.png": "70f369d4a89fc9ef9008d99299e23777",
"assets/assets/images/dashatar/green/8.png": "4f238cb5b59b8d246f3b45d64fa4065e",
"assets/assets/images/dashatar/green/1.png": "1aaa0fc741c524e9072308c3a791783c",
"assets/assets/images/dashatar/green/10.png": "06b7f188768b1057a8e66347909f53ef",
"assets/assets/images/dashatar/green/9.png": "4b652f03ed51359a4729dacb9a3f7479",
"assets/assets/images/dashatar/green/5.png": "70c96aa8481c1d899b70813a9ebe9464",
"assets/assets/images/dashatar/green/14.png": "485fef2877b1e82ecf1e8c1fc76ce82b",
"assets/assets/images/dashatar/green/7.png": "33c182d78222e82fbc5ab27ab2f5c394",
"assets/assets/images/dashatar/green/3.png": "026e60505858e27f4c38667ab345b5b7",
"assets/assets/images/dashatar/green/13.png": "d64aff6c5f2a5aa8a2c5e4190c1664a1",
"assets/assets/images/dashatar/yellow/12.png": "aa572bdcf208950ba3ba18163843ce9b",
"assets/assets/images/dashatar/yellow/11.png": "06b5abb83556b27e419fd25b6379718d",
"assets/assets/images/dashatar/yellow/2.png": "27c9f436411e6fd5ae90747365567332",
"assets/assets/images/dashatar/yellow/15.png": "627fc0b4d5f7143d6054a12320e24ea3",
"assets/assets/images/dashatar/yellow/4.png": "242529bdbff47093644ae7c3294a5605",
"assets/assets/images/dashatar/yellow/6.png": "eccda62166e60dd38eb2f7e8e299ad6d",
"assets/assets/images/dashatar/yellow/8.png": "009119a3070bb1a26e1c0818416b9443",
"assets/assets/images/dashatar/yellow/1.png": "f08b518484f7089f7efbd5b0fa582410",
"assets/assets/images/dashatar/yellow/10.png": "762f254e03a141c4f37f5266252e7fda",
"assets/assets/images/dashatar/yellow/9.png": "4871571dbf700aa442f0164de2741584",
"assets/assets/images/dashatar/yellow/5.png": "004623c40322bfde14297f900e9fca9a",
"assets/assets/images/dashatar/yellow/14.png": "4305aad7dece1bf58563be4b1206462e",
"assets/assets/images/dashatar/yellow/7.png": "8f8ab4dc886aa6ab28ee3915cb253fef",
"assets/assets/images/dashatar/yellow/3.png": "5819a2018af0001c722ab7bcc9dd68a8",
"assets/assets/images/dashatar/yellow/13.png": "125ce26c7037c3ce1b5cc5612c6f45a4",
"assets/assets/images/dashatar/gallery/yellow.png": "8529c74259d6963491ceda3a82a8df30",
"assets/assets/images/dashatar/gallery/green.png": "56aabe4c6f02f0000fb00cf8d7a93544",
"assets/assets/images/dashatar/gallery/blue.png": "0d11f20efc6570a048f7fdaaaf91fb01",
"assets/assets/images/shuffle_icon.png": "32ebb4a7c6f9b07157a57f537f254619",
"assets/assets/images/simple_dash_large.png": "c3100434238b1fe0f6b8e6d074ccd80e",
"assets/assets/images/facebook_icon.png": "284d2a1d2782e5e24b1f9bce25f3ea9a",
"assets/assets/audio/tile_move.mp3": "f4056eec1581ee5264ab8f481a59d5d3",
"assets/assets/audio/click.mp3": "7b257864b73a219a79572b785910e685",
"assets/assets/audio/dumbbell.mp3": "aa341eb857b4fd972767430aa5babb30",
"assets/assets/audio/success.mp3": "746679b7331cf687df94188b40ff6f67",
"assets/assets/audio/shuffle.mp3": "0ac82d67f08b71d43046256dbc2db12d",
"assets/assets/audio/sandwich.mp3": "5a3cf659842b0db22ab9495ea2cdc80a",
"assets/assets/audio/skateboard.mp3": "13e460479dc92b0ff1574d35a5204392",
"assets/NOTICES": "eaa1153c633fb6aa029336a0ddde55af",
"icons/Icon-192.png": "12d05db1c0b26d429b54e3f8c946a496",
"icons/Icon-512.png": "aabba36693aba0ec8d954adf297d3125",
"icons/favicon.png": "7a26ea9d4e61122fc023b84e5acdb148",
"manifest.json": "c58884a2d51c23985850658029a90226",
"version.json": "edac6610d63f93aebfb1c09a76230248",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
