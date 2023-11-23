'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "92e4e8d51bbe23b39a815047e08481e6",
"index.html": "65299887fc0f0c7aa8a7ee2042a1a73b",
"/": "65299887fc0f0c7aa8a7ee2042a1a73b",
"main.dart.js": "0650f8188db1efb81e2bdd6fd3476b9f",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "b064420366b18d0ddb1d283d2f577850",
"assets/AssetManifest.json": "48b859e9e1c053c894636292a3e20c21",
"assets/NOTICES": "07cc2b30788f024a2bec64c665fbf284",
"assets/FontManifest.json": "f885005c585293f255b95a4da230ca5b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "4bc7849a5c7774cfa18e4bc2ef82404a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "dbf0a93d2b23d99b7af4b1a6ab94e122",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "bbc3a2d2265f7ff6bef4ba339a0ba4c9",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "3a1054c593ea4c5d1f404c38f4526d0d",
"assets/fonts/MaterialIcons-Regular.otf": "3089cf1cd604e39a8c8c8d9cfd25b6d6",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/email.png": "4ce75b4a3ebac9c739631d3f5436457d",
"assets/assets/images/chat_us.png": "8252ff3f954b6d30dc557c6bc78a9b05",
"assets/assets/images/feature1.png": "8b362f79d200931ab2c6e836893c5dae",
"assets/assets/images/feature3.png": "8a2b8822554b92372ab73908d57ddb43",
"assets/assets/images/home_ss.png": "2d8b7ea157ef341e367e3bfb16e256ec",
"assets/assets/images/feature2.png": "fec226c416cb909341cef5ec3b3a61be",
"assets/assets/images/qrcode.png": "51919a8709f0d39e55f9827b178f68fb",
"assets/assets/images/splash_desktop.png": "7e339318b54441d3daca28bdf2ae12f9",
"assets/assets/images/face1.jpeg": "588d27d399cfc6cd695580ea1ff61867",
"assets/assets/images/mail_us.png": "31b702eccecfa2b1b6ae9fe37b4414d3",
"assets/assets/images/meet_us.png": "8bbb8b2982ed4c9ccdfadbe0f863be3e",
"assets/assets/images/qr_new.png": "d314770a2812f16f63b316171ea4fc50",
"assets/assets/images/logo_nobg.png": "1485d105933a09ed379dd1205fd360e5",
"assets/assets/images/appstore.png": "272d6cfdd900ded46fbf216f6a6e3586",
"assets/assets/images/dialogbg.jpg": "725693b4397044acfb606943485e4a0d",
"assets/assets/images/background.png": "af80405da4fcdf144d18e5358095e089",
"assets/assets/images/face3.jpeg": "c3adafea9ec2ed55e934e19f3a8ebd55",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/face2.jpeg": "87912edc71674efeac73e9b894845d9f",
"assets/assets/images/location.png": "e7cc16b295c335fdb1751935e343e7c5",
"assets/assets/images/playstore.png": "16b38dfbddcb987ba696042e9158b3e2",
"assets/assets/images/whatsapp.png": "9c06c3b1bd6cc9e2d9eebcfdf0975019",
"assets/assets/images/face4.jpeg": "c39d808590be7c7fa8f3b4834e91b417",
"assets/assets/images/bg.jpg": "a3a96c6cd234bcbcc3361f9462ccd719",
"assets/assets/lottie_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/Italic.otf": "8224b4b36f01315dc81a64fa4b73f785",
"assets/assets/fonts/Medium_Italic.otf": "2d332e6d820335aabb9e0a0b16286451",
"assets/assets/fonts/Light.otf": "ca5a05b581c5374c8c18179065016be3",
"assets/assets/fonts/ExtraBold_Italic.otf": "b1600d1a1ec294a2f76877761275f6c3",
"assets/assets/fonts/Nunito-Light.ttf": "42405ee88f303e033d1ff57280f9cffc",
"assets/assets/fonts/Nunito-Regular.ttf": "0c890be2af0d241a2387ad2c4c16af2c",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/Bold_Italic.otf": "c7f0c0e23b93af36b684d74ed31c81c4",
"assets/assets/fonts/Regular.otf": "951e8a353a683fe8b104e9afc171d189",
"assets/assets/fonts/ExtraBold.otf": "101b3f694f60dcad2f62b9ff5e6be2d2",
"assets/assets/fonts/Bold.otf": "89f6a97ddc6905bf0172df727a93a31a",
"assets/assets/fonts/Medium.otf": "2f185536e8508515923ad002638f51fd",
"assets/assets/fonts/Light_Italic.otf": "c9c8315921bee2fcf8a43daa37b6eea0",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
