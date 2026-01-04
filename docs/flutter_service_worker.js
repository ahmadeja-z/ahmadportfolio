'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "e2ca1eaafa9de00bed3593c7309dac5c",
"version.json": "d9702fb8dd20756684e172a8a17024f1",
"index.html": "22bbb441192bb06538ef7f60d2c10167",
"/": "22bbb441192bb06538ef7f60d2c10167",
"main.dart.js": "c7aa10d3d9ec6f874ab72a8a09aaabe6",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/logo-aerium-2.png": "36f487a620084985230b14e32ff62b5a",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "837a30e371e15f992f497269f3b833b8",
"assets/NOTICES": "a5f2633ef89484a88790e3205038dcd7",
"assets/FontManifest.json": "eb896e5a537fa2a3886e0ed6ecd5f38a",
"assets/AssetManifest.bin.json": "aa90d504af7116b1f3fa5063fde360d8",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Regular-400.otf": "b2703f18eee8303425a5342dba6958db",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Brands-Regular-400.otf": "7646da58ef521dbe1c4c782a02b0ec98",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Solid-900.otf": "c269b435ad120b4fe6f850b94edc7b9d",
"assets/packages/flutter_feather_icons/fonts/feather.ttf": "40469726c5ed792185741388e68dd9e8",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/AssetManifest.bin": "4f45ff51617a3a39203b1887a932e757",
"assets/fonts/MaterialIcons-Regular.otf": "eb82c5e3d93be2be34b1df765cdf99e7",
"assets/assets/screenshots/8.jpg": "95799f71c9817f376085c3898b75d287",
"assets/assets/screenshots/9.jpg": "e727c315acf66548049c51eb6c6bbc9e",
"assets/assets/screenshots/5.gif": "63b922b2439e4b9d8c82cb0d70d49b29",
"assets/assets/screenshots/6.gif": "73e6970dd99c11e67c4ef508b6375487",
"assets/assets/screenshots/3.gif": "045c76d00225ca68992c0dfdeca8d667",
"assets/assets/screenshots/11.jpg": "865a19485fc0879161062afd25ce23bf",
"assets/assets/screenshots/10.jpg": "ee1b6eee2d5df5a5bfdcb686266b75a0",
"assets/assets/screenshots/4.jpg": "f114c609432d9115658f5477900f66a7",
"assets/assets/screenshots/7.jpg": "2a56579d6ae3958c6ef6e14285d436dd",
"assets/assets/screenshots/2.jpg": "e16664ace87aa12b2266e6f8127ca05f",
"assets/assets/screenshots/1.jpg": "396c571e13c03fa3ddd14f13c601b8ad",
"assets/assets/screenshots/0.jpg": "d7a4be69fcea5718ce8fdaa844ce0988",
"assets/assets/images/ahmad-ejaz-cv.pdf": "98c554924e5ca58f1622df271421ba03",
"assets/assets/images/ios-down-arrow.png": "fa4679d2972f1d11355142a60ed34ede",
"assets/assets/images/down-arrow.png": "4393cd5feeb20fb468c7eb223d1bbd06",
"assets/assets/images/associate_android_dev.png": "496dc53d08eec0434eeeae9887955ec8",
"assets/assets/images/dev_meditate.gif": "0d091ab3d4e91ae980045433e270834d",
"assets/assets/images/cloud_developer_cert.png": "1ca2e8a34f3acd90d81a67673b3b42be",
"assets/assets/images/data_science_cert.png": "1364c23105bfbb8c9197f7ad1f9dd245",
"assets/assets/images/projects/siraat/siraat_main.png": "e3dfef7ef13c36e47e8f406172ac72e6",
"assets/assets/images/projects/siraat/siraat_9.png": "b50df6d343648641dabd17392aea0c3b",
"assets/assets/images/projects/siraat/siraat_8.png": "3e0177442564bc52d84eb72d64df40e6",
"assets/assets/images/projects/siraat/siraat_footer.png": "febc74c053ee77bfe699d1173c0adcc4",
"assets/assets/images/projects/siraat/siraat_header.png": "bb3bf17e27d218ad4064f2ca53d95f91",
"assets/assets/images/projects/siraat/siraat_10.png": "521a637747bd24e67c23a44e3956f29e",
"assets/assets/images/projects/siraat/siraat_5.png": "11851a53e168cfec7bc8dc279e9b2890",
"assets/assets/images/projects/siraat/siraat_4.png": "458b95a010a29f21b458c727afb7d344",
"assets/assets/images/projects/siraat/siraat_11.png": "42520825648235226b470d8613242262",
"assets/assets/images/projects/siraat/siraat_13.png": "e3bfd9e9099fecb68936b4f30ae104b6",
"assets/assets/images/projects/siraat/siraat_6.png": "bfa79cadb0bc804066c08ae22445e2ec",
"assets/assets/images/projects/siraat/siraat_7.png": "32ad5d79d633c5fab44c402115468dcc",
"assets/assets/images/projects/siraat/siraat_12.png": "14fa8cd87fe0f3e91f3292251b16662c",
"assets/assets/images/projects/siraat/siraat_3.png": "e90f9552117fcc8b12467705873c0c82",
"assets/assets/images/projects/siraat/siraat_2.png": "9b93531a3c940d51ffb409b8b6c1a0ba",
"assets/assets/images/projects/siraat/siraat_15.png": "3744103c00759c1916c926091c45af54",
"assets/assets/images/projects/siraat/siraat_1.png": "45957d3488c062887e27e0032fa5d2b5",
"assets/assets/images/projects/siraat/siraat_14.png": "ad50928008747e02dd23c899708ef8a0",
"assets/assets/images/projects/hibuy/hibuy_main.png": "d6d6765feb96c2ca29f9e6050aa78f75",
"assets/assets/images/projects/hibuy/hibuy_4.png": "3763a9e05a5bef75e6ba96a121fc760b",
"assets/assets/images/projects/hibuy/hibuy_5.png": "82da845dfc062216efa6f0d14aba04ac",
"assets/assets/images/projects/hibuy/hibuy_7.png": "609154b6ab7d62982d65b3207f2fbd0b",
"assets/assets/images/projects/hibuy/hibuy_6.png": "74e3fdd92f8b6749ece56baacbf32178",
"assets/assets/images/projects/hibuy/hibuy_2.png": "8c23f14a7dff9fad819c95eb4b434f17",
"assets/assets/images/projects/hibuy/hibuy_3.png": "957914b0e1670550977a085e559d65fc",
"assets/assets/images/projects/hibuy/hibuy_1.png": "c3a4acc9acef73630dc6f3a4790b10c7",
"assets/assets/images/projects/siraat-admin/siraat_admin_10.png": "cf81fefb36e36f839581354194775939",
"assets/assets/images/projects/siraat-admin/siraat_admin_8.png": "81273c18455009c9270b2350fb04465a",
"assets/assets/images/projects/siraat-admin/siraat_admin_9.png": "a4d981859a638ac736f60c4d3613a59a",
"assets/assets/images/projects/siraat-admin/siraat_admin_4.png": "20b274cbdb4d4c1042d34e563295e056",
"assets/assets/images/projects/siraat-admin/siraat_admin_5.png": "b2e3e2a6f1ea22bcaeb0dee400d95611",
"assets/assets/images/projects/siraat-admin/siraat_admin_7.png": "43dafe0c442050d719a539fd989f267c",
"assets/assets/images/projects/siraat-admin/siraat_admin_6.png": "a2259b8d1ec88c8218d1caa67176d123",
"assets/assets/images/projects/siraat-admin/siraat_admin_2.png": "da3035406878f1fa750466ba44caee1d",
"assets/assets/images/projects/siraat-admin/siraat_admin_3.png": "aa7bb8300c3d2954e54ef227677ff21b",
"assets/assets/images/projects/siraat-admin/siraat_admin_1.png": "6a160538ca8e7d982ede2ed2fd0349a4",
"assets/assets/images/projects/siraat-admin/siraat_admin_link.png": "936b547154f52dbd8e7cc55546f73e79",
"assets/assets/images/projects/siraat-admin/siraat_admin_main.png": "be9d458f7d99cc507b0191b3add7a0f0",
"assets/assets/images/projects/deltholotto/delthoLotto_footer.png": "aa667d744ce1dc87ed5e0ea875d04a1b",
"assets/assets/images/projects/deltholotto/delthoLotto_header.png": "fda6fb2895376b1dbbc51dab7df6b7ce",
"assets/assets/images/projects/deltholotto/delthoLotto_18.png": "e4ae60205c7ab09a2f27ef7784d8ba3c",
"assets/assets/images/projects/deltholotto/delthoLotto_6.png": "be613eb87b250cfb85b13f792b474097",
"assets/assets/images/projects/deltholotto/delthoLotto_7.png": "cb76c81cef66e944f444bedf412dc7f0",
"assets/assets/images/projects/deltholotto/delthoLotto_5.png": "ae6d40065f731c28882a9dac212f3202",
"assets/assets/images/projects/deltholotto/delthoLotto_4.png": "05d578a0d0b710f748e69deb122b7f6e",
"assets/assets/images/projects/deltholotto/delthoLotto_1.png": "c8ce9ed46090b12364c31766b4b8d554",
"assets/assets/images/projects/deltholotto/delthoLotto_3.png": "ffc3d3e98108d82ddc41b2122af51fb6",
"assets/assets/images/projects/deltholotto/delthoLotto_2.png": "53620fc79eee0de260751d5e8743c8dc",
"assets/assets/images/projects/deltholotto/delthoLotto_11.png": "51e049b2e27f5aed03a1a5ba46cb1dfe",
"assets/assets/images/projects/deltholotto/delthoLotto_10.png": "87dae8d8d48f8d0626be93cb367548d6",
"assets/assets/images/projects/deltholotto/delthoLotto_12.png": "e99027e1e951b14e68daf6a4f83bda2b",
"assets/assets/images/projects/deltholotto/delthoLotto_13.png": "79ea811fb41525655bbb1c19f8e8f897",
"assets/assets/images/projects/deltholotto/delthoLotto_17.png": "2c36ab21d340c95b8253adae732839b8",
"assets/assets/images/projects/deltholotto/delthoLotto_9.png": "064382255699dc42bf39e2512dd33f1a",
"assets/assets/images/projects/deltholotto/delthoLotto_8.png": "104fe4fbc6aa7f5f9fd5fc84c603f6f5",
"assets/assets/images/projects/deltholotto/delthoLotto_16.png": "919e80198cb87e86ccbebb666ceb4a81",
"assets/assets/images/projects/deltholotto/delthoLotto_14.png": "20a65c5603a8a3448aa8e2ab7d6423bc",
"assets/assets/images/projects/deltholotto/delthoLotto_15.png": "a9ecda6a01e1dcf4ae4583d4bb2f288c",
"assets/assets/images/projects/deltholotto/delthoLotto_main.png": "cd8c0cb3404b522796a2d8cc6648f7a8",
"assets/assets/images/projects/speezu-rider/speezu_rider_main.png": "e8efeed48f3cb032947e0795852cfd2b",
"assets/assets/images/projects/speezu-rider/speezu_rider_5.png": "5e4d2ed3b3621043bc400f472bf3869e",
"assets/assets/images/projects/speezu-rider/speezu_rider_4.png": "4695c4286c799d3832c99aaee9824bc4",
"assets/assets/images/projects/speezu-rider/speezu_rider_1.png": "462b3c35e47f3d1f7662aea9678c7d15",
"assets/assets/images/projects/speezu-rider/speezu_rider_3.png": "de26256f66614b2add71ec72b8776ea0",
"assets/assets/images/projects/speezu-rider/speezu_rider_2.png": "55ab4b856cb96fc1cb5e9f6178df6810",
"assets/assets/images/projects/speezu/speezu_more_description.png": "180c10b58a97c7f5d6cc205fe2de4d18",
"assets/assets/images/projects/speezu/speezu_cart_features.jpg": "2c9fd2a5d1890e63e1de3bcd2e6874e7",
"assets/assets/images/projects/speezu/speezu_mock.jpg": "f3c3cf76d13e57e8ff793ca33e04a7a4",
"assets/assets/images/projects/speezu/disneyplus_the_end.png": "32e658209ce45e9227860a8c0fbf1b54",
"assets/assets/images/projects/speezu/speezu_theme.png": "0a07c3aa4e821a653ce2b981b4ddbf46",
"assets/assets/images/projects/speezu/speezu_mockup.png": "8a3abc2c9d29b340d8a16d2156843ee2",
"assets/assets/images/projects/speezu/speezu_profiles.png": "d197f2030b2eab690adaf306f3025aa4",
"assets/assets/images/projects/speezu/speezu_cover.png": "f717559f02fe2bc9a62e25f6ce0be736",
"assets/assets/images/projects/speezu/speezu_categories.png": "c8248c60ee131040a20ec5b266da409f",
"assets/assets/images/projects/speezu/speezu_home.png": "35fee674c12af27ad25c15ccb409d7ab",
"assets/assets/images/projects/speezu/speezu_designs.png": "53687c31778302d36d34963cdccf2798",
"assets/assets/images/projects/speezu/speezu_components.png": "2262d5699d0dc9d5e4a691257fc08d88",
"assets/assets/images/projects/speezu/speezu_header.png": "bc85840c7a4c37bd64edf1f5dd5b1b2b",
"assets/assets/images/projects/speezu/speezu_description.png": "e0ea816187f36f77523f8e23abfea1a6",
"assets/assets/images/projects/fenix/fenix_1.png": "65ed74aa4bd4d854356f17028cfd2330",
"assets/assets/images/projects/fenix/fenix_2.png": "716247696095555ff9e15b842e9d41bc",
"assets/assets/images/projects/fenix/fenix_3.png": "764bdab399c12972adf48408a3f5fbd2",
"assets/assets/images/projects/fenix/fenix_7.png": "25390e79f3cec082cad008420017a372",
"assets/assets/images/projects/fenix/fenix_11.png": "67b9ab0e553320194e9aace1aab51b0d",
"assets/assets/images/projects/fenix/fenix_10.png": "fcee69fded1bd3caf1d1d7b6759a8b2a",
"assets/assets/images/projects/fenix/fenix_6.png": "4d15d7b2b34c282d403056e50cc8b2e7",
"assets/assets/images/projects/fenix/fenix_4.png": "9754d31218fb7c8816bde446a0500c95",
"assets/assets/images/projects/fenix/fenix_footer.png": "15951f6958b388311028273a4530302e",
"assets/assets/images/projects/fenix/fenix_5.png": "3679f8ec318b7325bfffc914822718ab",
"assets/assets/images/projects/fenix/fenix_main.png": "0a7dd636b8026ce96889d568af477033",
"assets/assets/images/projects/fenix/fenix_8.png": "f24b7f9e188b59886873e3c806fd7a9e",
"assets/assets/images/projects/fenix/fenix_9.png": "46937a97c7309d7a9d647c488e8b3f2a",
"assets/assets/images/projects/poultry/poultry_main.png": "25731d046eddf5f40e223eff9d9be92e",
"assets/assets/images/projects/poultry/poultry_4.png": "8d8e9d7f534f6765eee7c779fe6883a1",
"assets/assets/images/projects/poultry/poultry_5.png": "9f79f9cfade19a665c08309f269e2cf6",
"assets/assets/images/projects/poultry/poultry_7.png": "2f905e81a8eb804107e59586ee701092",
"assets/assets/images/projects/poultry/poultry_header.png": "d502b2d5fa68e3e1328a7525462be536",
"assets/assets/images/projects/poultry/poultry_6.png": "e81699da8e76c0d65f39f24b6bb173ca",
"assets/assets/images/projects/poultry/poultry_2.png": "f537bbc6690bbeff152968ba95503573",
"assets/assets/images/projects/poultry/poultry_3.png": "e8a733c4d2b4ed5fae44c945992a29d7",
"assets/assets/images/projects/poultry/poultry_1.png": "a92cb02d8aa1833b5fe4d6cfde8a404c",
"assets/assets/images/cmu_cert.png": "522cfd8c2bf621d86dbbca32c7624377",
"assets/assets/images/circle.png": "663d5187ada8666bfa87120d1665605f",
"assets/assets/images/right-arrow.png": "62a7bab73a0fe40acd3f4555adfcab91",
"assets/assets/images/android_basics_cert.png": "3279aee63a95e1b4df4e4999364f8749",
"assets/assets/images/works.png": "5c6f8eb3a22f703781aad6c2528cf0cd",
"assets/assets/images/dev_meditate.png": "8ad47d3a1e1bd698ff8e3363cb9d2378",
"assets/assets/images/down-arrow-2.png": "de203dedb01f2871b4ebbec490c20a6c",
"assets/assets/images/google_play.png": "7c42f3803d546db3d393106501dba541",
"assets/assets/images/skills.png": "2bd1870ebedbbd39a41827675a2846c3",
"assets/assets/images/up-arrow.png": "d0c6457f5704962b99f0e6aa3e9b18e7",
"assets/assets/images/skills1.png": "77752281625f377820cdc5de7e66512c",
"assets/assets/images/ahmad_ejaz.png": "5db60cae7b5fdd65b4ce52b116d683d1",
"assets/assets/images/skills2.png": "5849f99db0aaf1026199cd184087deae",
"assets/assets/fonts/visuelt/VisueltPro-Black.ttf": "691b6f9aa3ee625e3cd8da2f8849a126",
"assets/assets/fonts/visuelt/VisueltPro-ExtraLight.ttf": "90bfa0766e43260710e3c6ac0f78c9e9",
"assets/assets/fonts/visuelt/VisueltPro-Regular.ttf": "0f8cd2494eb8c5e3a33352b2dd38fd61",
"assets/assets/fonts/visuelt/VisueltPro-Bold.ttf": "18acd33c965a455418d4204f0f334ea8",
"assets/assets/fonts/visuelt/VisueltPro-Thin.ttf": "82d7b5b67c24f00acb08f2dccf1fd03b",
"assets/assets/fonts/visuelt/VisueltPro-Medium.ttf": "cf4dbc20776a2b309fe30a9bbfe7de0a",
"assets/assets/fonts/visuelt/VisueltPro-Light.ttf": "2a1df2ff00c2611bf1b7fdeeaeebfa59",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01"};
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
