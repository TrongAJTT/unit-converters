'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "fff7b309935f023bad2e0fae0f52d8b4",
"assets/AssetManifest.bin.json": "c29350470506170b6524afeab029e74e",
"assets/AssetManifest.json": "f1acd4103f494bbf9f6591b49fa4cb5f",
"assets/assets/app_icon.ico": "3b14cd0679e1987f45e77f22d73b7e99",
"assets/assets/app_icon.png": "f79ea3deae0c657a5751eb42d444e6d4",
"assets/assets/app_icon.psd": "3b5831bd32e7787350db9c0d623c4be3",
"assets/assets/func_info/areaConverter_en.md": "0bfdf92571f80a23d8f6580acdb3b67d",
"assets/assets/func_info/areaConverter_vi.md": "b2b2e74b8bb414ed6eba75671d4f8ade",
"assets/assets/func_info/currencyConverter_en.md": "285b70433ef08df3ed58b975e8886ff6",
"assets/assets/func_info/currencyConverter_vi.md": "47d4df8b2242b42fb120e9fe645f02fd",
"assets/assets/func_info/dataConverter_en.md": "b68fa4b52e6779672e8166712314572d",
"assets/assets/func_info/dataConverter_vi.md": "34644aaa90ceda24b85f4c5b2b8d045a",
"assets/assets/func_info/guide.md": "f694a8de912da20bf9dc784af1f36f4f",
"assets/assets/func_info/lengthConverter_en.md": "4e9988d1dc2660fd426a7f811a3a3c8e",
"assets/assets/func_info/lengthConverter_vi.md": "c2b7850ebc6ca93702dc701a36859114",
"assets/assets/func_info/massConverter_en.md": "b589f5429d19e6eed61720081bc23961",
"assets/assets/func_info/massConverter_vi.md": "2180344af146c1dc65dec79a0f467480",
"assets/assets/func_info/numberSystemConverter_en.md": "1d78d45c2de2a2b201768c4272b6a30d",
"assets/assets/func_info/numberSystemConverter_vi.md": "16d81058898879fe18f705e418e29648",
"assets/assets/func_info/speedConverter_en.md": "a7a8d385f720c4a039bfae2605535806",
"assets/assets/func_info/speedConverter_vi.md": "f4e6ecab04edc836989660959633488b",
"assets/assets/func_info/temperatureConverter_en.md": "020f4e0bfd03bcd0c28f3ad9fcb8701a",
"assets/assets/func_info/temperatureConverter_vi.md": "4e355bbef88e5ebf37bc0b2325e17a3a",
"assets/assets/func_info/timeConverter_en.md": "5b1e89a60d914fe0df4fade4b1304e0b",
"assets/assets/func_info/timeConverter_vi.md": "def9dd51e6a9b1a331cd65a1e66611c1",
"assets/assets/func_info/volumeConverter_en.md": "dab62f1194659c1bd025f40279d2f379",
"assets/assets/func_info/volumeConverter_vi.md": "599e1d3261269a829c1adb8060120675",
"assets/assets/func_info/weightConverter_en.md": "542ad6b65512c5a310eb5a77e06c1a1d",
"assets/assets/func_info/weightConverter_vi.md": "a78131f0b4ede4dcde7377adafe0a422",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "7238feada109ec42b0be70a023dee010",
"assets/NOTICES": "a58b1eefa660c95fdc75319e34d0430d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "64047ee0dd537852e92fc2fe38a822aa",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "ba5f19b7f94d5023e073e52f08addcf7",
"icons/Icon-192.png": "0e01e0aecb1db045b9897279c7a8f6fc",
"icons/Icon-512.png": "ccc68cb5767a5df462d4dddfebf13c51",
"icons/Icon-maskable-192.png": "0e01e0aecb1db045b9897279c7a8f6fc",
"icons/Icon-maskable-512.png": "ccc68cb5767a5df462d4dddfebf13c51",
"index.html": "b3640306985adc2ee9d333cf0572309b",
"/": "b3640306985adc2ee9d333cf0572309b",
"main.dart.js": "698ee23f843eff5be1125b7f40e26626",
"manifest.json": "63223fdd6b31ed30a0884b706b2ae558",
"version.json": "b9a2ba6158bd431852cbc1d5ce292b40"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
