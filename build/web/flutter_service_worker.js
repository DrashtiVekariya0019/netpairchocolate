'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "16204d431db2dd850bc665df86243924",
"assets/AssetManifest.bin.json": "0732030b55c09c2dfc8d6b6d9ede0351",
"assets/AssetManifest.json": "a5f513b90a6b8fc275ca66d08d257a46",
"assets/assets/fonts/Montserrat-Bold.ttf": "354dc625a35bef1b6ec00a79c6cfc0c8",
"assets/assets/fonts/Montserrat-Italic.ttf": "5128267cb132ae4a1a9e1d8ed61c1834",
"assets/assets/fonts/Montserrat-Regular.ttf": "38712903602f88435ddddec98862f8b8",
"assets/assets/Images/About-us-Title.jpg": "356406a38994220f4e558937a7bb9b89",
"assets/assets/Images/banner-bg2%2520(1).jpg": "f52c00f3ccb2f7757d37229a940b9ed2",
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
"assets/assets/Images/homepage2.jpg": "64217b615b79ce30e5304f75a51790e9",
"assets/assets/Images/homepage3.jpg": "23ee2b337dd291c993b4799f87c604ac",
"assets/assets/Images/Made-with-passion-and-love.png": "c2cec8aee709028b17775666e6b0660e",
"assets/assets/Images/milk%2520chocolate.jpg": "bdde85433ee1a0ecdee6e088f44618bd",
"assets/assets/Images/netpairimage.png": "e033cbd3f189c272e8f1d763f1a68613",
"assets/assets/Images/NPChocolate01.png": "2e907b5706993b292fdd1a542bc0b733",
"assets/assets/Images/privateandwhitelabel.jpg": "b8e58c16be2e295941f308ac7ece7580",
"assets/assets/Images/productionfacilities.jpg": "65606dafe76b3d082e1e0ee1de7e0b7f",
"assets/assets/Images/signature%2520chocolate.jpg": "873b7cf1acd021ad5638a502613b1f87",
"assets/FontManifest.json": "2f34b8ea08186553fad1171c60774999",
"assets/fonts/MaterialIcons-Regular.otf": "9de330c134c69b9b7a20cdbabf48b809",
"assets/NOTICES": "7b7c8155a4e719898983d65b5346830c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/flutter_map/lib/assets/flutter_map_logo.png": "208d63cc917af9713fc9572bd5c09362",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "4769f3245a24c1fa9965f113ea85ec2a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "bf21cd8fd775a3c59fd53afdee39e0e6",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/packages/lucide_icons/assets/lucide.ttf": "f9ba0b4172a0beabfecd5857b55dfe72",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "d3e88683f51273dc5ade6bcf0b6dc3c4",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "889ff5a59fdc5746970baef8528262a1",
"/": "889ff5a59fdc5746970baef8528262a1",
"main.dart.js": "337963a4f492e2da8c5ae54055407fcf",
"manifest.json": "df9f91990f09588e74df49caa4b9b8be",
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
