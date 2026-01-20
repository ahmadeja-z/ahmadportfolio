import 'package:flutter/foundation.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void configureApp() {
  if (kIsWeb) {
    // Using PathUrlStrategy for clean URLs (better SEO)
    // For HashUrlStrategy (with # in URLs), use: setUrlStrategy(const HashUrlStrategy());
    setUrlStrategy( PathUrlStrategy());
  }
}
