'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "cd9b05c3c9186402e0f35c6aba5343e3",
"assets/AssetManifest.bin.json": "0b62d8c6e465a26cce26eb72ac152baf",
"assets/AssetManifest.json": "a7b56151e945716cd1d6922eb250d51c",
"assets/assets/fonts/Montserrat-Bold.ttf": "354dc625a35bef1b6ec00a79c6cfc0c8",
"assets/assets/fonts/Montserrat-Italic.ttf": "5128267cb132ae4a1a9e1d8ed61c1834",
"assets/assets/fonts/Montserrat-Regular.ttf": "38712903602f88435ddddec98862f8b8",
"assets/assets/Images/About-us-Title.jpg": "356406a38994220f4e558937a7bb9b89",
"assets/assets/Images/chocolate3.jpg": "20937785715f294c1a35c1f4987f27e6",
"assets/assets/Images/chocolatehomepage.png": "509449c6b6ddabfe94f2778325c719ce",
"assets/assets/Images/chocolatenew1.png": "40c1613433008b847c9ad67480682e28",
"assets/assets/Images/chocolatenew2.png": "2e7e8bde0a33fb4a389db0c6384b9970",
"assets/assets/Images/chocolatenew3.png": "b533683f6b732fb1394dd44e4c395e26",
"assets/assets/Images/chocolatenew5.jpg": "9b36bb1855fff74b9b5792665f28fd61",
"assets/assets/Images/chocolatenew6.jpg": "f704775f3be7d6a48bb5b3dc16138882",
"assets/assets/Images/chocolatenew7.png": "0aa93f4f550a457c1d563916d0661893",
"assets/assets/Images/chocolatenew8.jpg": "8a62f76ffd63167a2e9fd3570d9652a4",
"assets/assets/Images/chocolatenew9.jpg": "295a7cb1ad5869c8006a135ccfb06c66",
"assets/assets/Images/Corporate-Gifting.jpg": "d0a9c67617c25ee4a0ac9e15f6de06f7",
"assets/assets/Images/homepage.jpg": "4ad55dbe1bcf7c9ae300fdfff7906d60",
"assets/assets/Images/homepage3.jpg": "23ee2b337dd291c993b4799f87c604ac",
"assets/assets/Images/Made-with-passion-and-love.png": "c2cec8aee709028b17775666e6b0660e",
"assets/assets/Images/netpairimage.png": "e033cbd3f189c272e8f1d763f1a68613",
"assets/assets/Images/NPChocolate01.png": "2e907b5706993b292fdd1a542bc0b733",
"assets/assets/Images/productionfacilities.jpg": "65606dafe76b3d082e1e0ee1de7e0b7f",
"assets/FontManifest.json": "0cd85630235bb0c3ca187115e1e79d3b",
"assets/fonts/MaterialIcons-Regular.otf": "9de330c134c69b9b7a20cdbabf48b809",
"assets/NOTICES": "74b7104636e837f26cc6786e278626d7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/flutter_map/lib/assets/flutter_map_logo.png": "208d63cc917af9713fc9572bd5c09362",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "4769f3245a24c1fa9965f113ea85ec2a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "bf21cd8fd775a3c59fd53afdee39e0e6",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/packages/lucide_icons/assets/lucide.ttf": "f9ba0b4172a0beabfecd5857b55dfe72",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "afc6855cc432ea2c892c18b6d73df19b",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "4b5bb78305ca80b4b479dc42e69ab1fe",
"icons/Icon-192.png": "538623d96d1960d61444f18e86f37fd2",
"icons/Icon-512.png": "2373d5c1df4cd96d9f123f3996a593d7",
"icons/Icon-maskable-192.png": "538623d96d1960d61444f18e86f37fd2",
"icons/Icon-maskable-512.png": "2373d5c1df4cd96d9f123f3996a593d7",
"index.html": "5778de5bb65d67e9e61b68cd5a5c3acf",
"/": "5778de5bb65d67e9e61b68cd5a5c3acf",
"main.dart.js": "987e58226a4180c39e1652506e1a15cf",
"manifest.json": "175ee4f9ecec96bc75916b908be7ff27",
"version.json": "1fa68330e4a682d6d8514fabf267cb43"};
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
