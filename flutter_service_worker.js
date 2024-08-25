'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "9cd599a3523898e6a12e13ec787da50a",
".git/config": "4de2de50f1752129304ac4601c3227d2",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "0cd3b598689b80de3313fef8485a5c77",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "0cbc1acf99d3916fa654fbdb33f987c8",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "416b3e9bf1450857792852175c978114",
".git/logs/refs/heads/gh-pages": "416b3e9bf1450857792852175c978114",
".git/logs/refs/remotes/origin/gh-pages": "6da490d0d96e79c4a7aa015ade7c17ec",
".git/logs/refs/remotes/origin/main": "7a49462977af467b4f0a5c0d8e10a213",
".git/objects/03/61efb4388bf970d7e1a33d1cb0425be0b76a2c": "804ca15b4d32c8c6f38c5ccec89fdf05",
".git/objects/0c/c7c16a903c30a10a0f16cf36604bd083fa80d9": "1265dac6e0d0ca6029a57f09212c1c2d",
".git/objects/0f/c344c7e8b9e32ea1ad91f30ded22556352d7bf": "a8a30f28869f7378465338066f34d80d",
".git/objects/10/b56f403aac306dc4c87b7fb897b339552de2cd": "a216869b89157b8fcd57a12a7aed8bbe",
".git/objects/18/eb401097242a0ec205d5f8abd29a4c5e09c5a3": "4e08af90d04a082aab5eee741258a1dc",
".git/objects/1a/b56976762d0ff875af4d5c25aa621549b7922b": "effab8d96d152ba049f06e480d49711e",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/20/1afe538261bd7f9a38bed0524669398070d046": "82a4d6c731c1d8cdc48bce3ab3c11172",
".git/objects/20/cb2f80169bf29d673844d2bb6a73bc04f3bfb8": "b807949265987310dc442dc3f9f492a2",
".git/objects/22/f3597156042ae583010263e1b95e4f266da017": "0e450a3bd98d6303ee3975c13ca2f9da",
".git/objects/23/3a8ffea8cc3e075aaaa9d28749b323f898a314": "4bc2713ecfd311f033d8f5bd2b9d051e",
".git/objects/23/fee3d7017d2b117558b7350c720336744d6421": "e825b3c1328954762e5ad88d141f17c2",
".git/objects/25/8b3eee70f98b2ece403869d9fe41ff8d32b7e1": "05e38b9242f2ece7b4208c191bc7b258",
".git/objects/30/863c5c7425347661d05051c94b61d8e16a6321": "2d357fc0085ca7d20f4e1e492d884731",
".git/objects/3c/8098d2d83ee891b8a705e7a515db3c8a2611f9": "a5db6b0dbbb29ce7deaf30776745a909",
".git/objects/43/acd95aadadc3b9f216c236b0348bc68d000de7": "14739414ca967d92043f07f835f0fffe",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/49/adebdb511c8c293b28db3f6792e5bac28cdc32": "ba6a3971e7f06834fd6ec3844372ce17",
".git/objects/4f/fe4df41adece591b3367179ff8f3f32e41c555": "402dd904ab6b20c8857d357734d7ca6e",
".git/objects/50/f197e5aceba0bbb6299b2dbd6cd1531ce9445c": "95d8fdb12d583fdd6eeffa1ed745c4c1",
".git/objects/52/896f461139823daf687cc35421b4042e303fbc": "63a42eee682858c78a1735754a5479b4",
".git/objects/54/ce8a196eba40f99d28e2fa2f7fe6132047155a": "49d21fd9fc9549388a057b956d5b6b50",
".git/objects/56/2088f16aee9ea060530e40145509fecc7e39e4": "e322423c933d31e8642194f59e59f247",
".git/objects/58/356635d1dc89f2ed71c73cf27d5eaf97d956cd": "f61f92e39b9805320d2895056208c1b7",
".git/objects/58/b007afeab6938f7283db26299ce2de9475d842": "6c6cbea527763bb3cdff2cecfee91721",
".git/objects/62/c89ee094658c7a9465824fdb42793a64ea557b": "133cd5da638f245b079d9e9cdc29ae38",
".git/objects/66/83e39b2d16cede76ff8d58be71d8e3bdeea754": "4042d13dbfb7d5bbff1ab70e0dcea277",
".git/objects/67/88b312ef84ed4d3fa707ed7269aee6fa25fc6e": "5de8dfeef6a5306fba3d89415dc2c133",
".git/objects/6a/2139d5de172633ff9027c155433f160d239fa1": "da924f5ba155961084d53248a108a561",
".git/objects/71/3f932c591e8f661aa4a8e54c32c196262fd574": "66c6c54fbdf71902cb7321617d5fa33c",
".git/objects/73/df5b6880c68f6c3ecda57acecccd7e04f61a7a": "81e9ecd4748e92a034f3129575b694c3",
".git/objects/76/c64be01bc9c74739349a778380378fc371bebe": "704c80ff8eb0617b61129268b53d5aa5",
".git/objects/7e/513cb3f514bcba24d21a1cd59adcde6fab6d37": "7202413974769e8e0add506720c5ef6a",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/93/d6eaaff43211eacb03d62985a6df2e0bc3f2c9": "3211edb4b25b395769e0e146f9751a04",
".git/objects/94/f7d06e926d627b554eb130e3c3522a941d670a": "77a772baf4c39f0a3a9e45f3e4b285bb",
".git/objects/98/79afd1ef5c3b4aa5e0201929d0a544e612ff59": "6e03eb14a3152c360fa2e911bb111e45",
".git/objects/9b/66497af8aa925090e8208e27bc60268d022438": "e49fbb01b843ef997aafc0067123383e",
".git/objects/a3/a61c4269c884abc03d316e648b0e32c1268833": "a83eb0f3d4a655d4df8f5d2e884428a7",
".git/objects/a4/0a59510dad5b77b5cae112c50b15a6d6684d86": "e4d353d8e3ce728f90d65302ef6a9ede",
".git/objects/ab/6b33962e3e6f0e25c3c81e365c0b629e89dbce": "9d18a0c46f31b0b430e1b50f715c0f16",
".git/objects/b3/ebbd38f666d4ffa1a394c5de15582f9d7ca6c0": "23010709b2d5951ca2b3be3dd49f09df",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/0efadfd3b29e71449fe720b0d503d3a71e78fc": "1e1acdc2ff3aebde051a6ce6c0c9315c",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/617910f8d4d56b15ef62fd2e09488d7dec4726": "8b3cffc4eff8110aebe92d3376cdb68e",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/ba/c3066eabdb59342a9869963739ca602e95b995": "42c5fe91047ade7925eac4dca13fad2b",
".git/objects/c9/bf8af1b92c723b589cc9afadff1013fa0a0213": "632f11e7fee6909d99ecfd9eeab30973",
".git/objects/cb/97927216ede29b3b222b044da9c12e760d2f6d": "2b60f3d07aef4613bd5eecb72712cea7",
".git/objects/d1/098e7588881061719e47766c43f49be0c3e38e": "f17e6af17b09b0874aa518914cfe9d8c",
".git/objects/d2/f600ec33b87daad5f0373e7ad3d7648be61c80": "7abeb414d86a9fa8c58ccffeafe3dc30",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d6/28c7b3f5b85a7b2dd881769c6962b1d6b66d77": "05f7c8b32b3e0235482624e5953953db",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/dd/ecc550a1001d419d10e8907bc2880d5a47e46c": "44c754e839782e8583f5b6b8d808fac1",
".git/objects/e7/4d47cc1ad50223863e84a7ef9e0c5ade8238ab": "564445aaa22a38a3362151f5df62c763",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f0/cd6cda958835eb2aef0cc314ac08daf96509b5": "204bf99cf1c2c3c5e48ff6f45959f1d1",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f4/ae2bc1551a65fd7405286379f192481f9971a3": "1b0cd69dd89e2b369c90706386bf6f24",
".git/objects/fa/fcfc8ebcba4d70721c0d8326cd411bf08de86c": "6524e5678d19de739f7db056a0f21535",
".git/objects/fb/70e64e83ce267012732f171f6193b231339229": "3bb6dee9547575f93d624b16538d51d3",
".git/objects/fe/a6fd2e76c0594de8d44d7158c93ce3089bfd83": "983f9cfea41ee7d5b6bef3a515cf96da",
".git/objects/pack/pack-f6dae3740b13ef37388dca898c338e9fb61c9174.idx": "2db738a7c05c585f583a9d6c5fa4332f",
".git/objects/pack/pack-f6dae3740b13ef37388dca898c338e9fb61c9174.pack": "5d2123622a7fbf2f8fb49aef9b14b386",
".git/objects/pack/pack-f6dae3740b13ef37388dca898c338e9fb61c9174.rev": "2c950c97b1ce214ec22eeb3567a35b42",
".git/ORIG_HEAD": "0cb4264e2cd711606c619cdb5eba5c53",
".git/refs/heads/gh-pages": "0cb4264e2cd711606c619cdb5eba5c53",
".git/refs/remotes/origin/gh-pages": "0cb4264e2cd711606c619cdb5eba5c53",
".git/refs/remotes/origin/main": "cb607981816061dd63ea2ddfd40df486",
"assets/asset/image/606491_linkedin_4096x4096.png": "546c78aaace3267d75bc03b2758c2354",
"assets/asset/image/Animation%2520-%25201723384307478.json": "2d27b677f9e5cda3a91bd25f9f788cc0",
"assets/asset/image/GitHub%2520Link.png": "fc7867d5341f17ceba16437ac1ee0017",
"assets/asset/image/instagram-logo1.png": "126602e3dfea89a753759a3559cd0186",
"assets/asset/image/R%2520(1).png": "4af42c87858bf65a60f6632aaf366a2f",
"assets/asset/image/WhatsApp_Image_2024-08-11_at_22.52.39_4ef7ce95-removebg-preview.png": "5f7afaec586a2b66f9881caa569e2b10",
"assets/asset/image/WhatsApp_Image_2024-08-11_at_23.05.31_b7c02688-removebg-preview.png": "2e1150e2359be3dc6d811dafc7443bae",
"assets/AssetManifest.bin": "cdeda932e29acaec2d4fabf86a174c10",
"assets/AssetManifest.bin.json": "c3a44cc8bc329cc733fef6ea3eeffc90",
"assets/AssetManifest.json": "4d3ddda01a1fd264795d37c57cf2b104",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "38ce31ab2c146858bb656d192ce0f8b1",
"assets/NOTICES": "ba6763296a4b1d244f213f6173478012",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "0f5474b254bdeb45691e6bc17288d42c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "1cdd773327b1cc4dab097412a2b23001",
"/": "1cdd773327b1cc4dab097412a2b23001",
"main.dart.js": "89e2a9fdb3fbed80f2c6ee8b1057e162",
"manifest.json": "d8fe34f7ae4c072a77b924e01dac8a50",
"version.json": "9b818ca9511483c901bed1545384376c"};
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
