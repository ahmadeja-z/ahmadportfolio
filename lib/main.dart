import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

import 'package:ahmadportfolio/injection_container.dart';
import 'package:ahmadportfolio/app_theme.dart';
import 'package:ahmadportfolio/core/utils/image_preloader.dart';
import 'package:ahmadportfolio/presentation/pages/home/home_page.dart';
import 'package:ahmadportfolio/presentation/routes/routes.dart';
import 'package:ahmadportfolio/values/values.dart';
import 'package:layout/layout.dart';

import 'configure_web.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Start preloading images IMMEDIATELY when URL is hit
  // This begins loading before app initialization, so images are ready faster
  // The preloading happens in the background and doesn't block app startup
  ImagePreloader.startPreloadingImmediately();
  
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  configureDependencies();
  configureApp();

  runApp(const AhmadPortfolio());
}

class AhmadPortfolio extends StatefulWidget {
  const AhmadPortfolio({super.key});

  @override
  State<AhmadPortfolio> createState() => _AhmadPortfolioState();
}

class _AhmadPortfolioState extends State<AhmadPortfolio> {
  static bool _hasStartedPreloading = false;

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp(
        title: StringConst.APP_TITLE,
        theme: AppTheme.lightThemeData,
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.homePageRoute,
        onGenerateRoute: RouteConfiguration.onGenerateRoute,
        onUnknownRoute: (settings) {
          // Handle unknown routes - redirect to home
          return MaterialPageRoute(
            builder: (context) => HomePage(),
            settings: RouteSettings(name: HomePage.homePageRoute),
          );
        },
        builder: (context, child) {
          // Image Preloading Initialization
          // ================================
          // Start preloading images once the MaterialApp context is available.
          // This ensures:
          // 1. Context is valid and can be used for image precaching
          // 2. Images start loading immediately after first frame
          // 3. Loading happens in background without UI blocking
          // 4. Static flag prevents multiple preload attempts (hot reload safe)
          //
          // What happens:
          // - Images load in batches of 5 in the background
          // - UI remains fully responsive during loading
          // - No conflicts with navigation, animations, or user interactions
          // - Failed images don't affect the app (continue loading others)
          // - Already loaded images display instantly when navigated to
          //
          // Timeline:
          // - App starts → MaterialApp builds → Builder called → Post-frame callback
          // - First frame renders → Preloading starts in background
          // - Images load progressively (2-4 seconds for all 161 images)
          // - UI continues normally, images cached for instant display
          if (!_hasStartedPreloading) {
            _hasStartedPreloading = true;
            
            // Use post-frame callback to ensure:
            // 1. First frame has rendered (UI is ready)
            // 2. Context is fully initialized
            // 3. UI won't be blocked by preloading start
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (context.mounted) {
                // Start background preloading
                // This runs asynchronously and doesn't block anything
                // Even if this takes 4 seconds, UI remains responsive
                ImagePreloader.preloadInBatches(context, batchSize: 5);
                
                // Note: We don't await this because:
                // - We want UI to continue rendering immediately
                // - Images will be cached progressively
                // - Images that aren't preloaded will load on-demand
                // - No user-visible impact if preloading is slow
              }
            });
          }
          
          return child ?? const SizedBox.shrink();
        },
      ),
    );
  }
}
