import 'package:flutter/material.dart';
import '../../ui/pages/chat_detail/chat_detail_page.dart';
import '../../data/models/guide.dart';

// Pages
import '../../ui/pages/splash/splash_page.dart';
import '../../ui/pages/onboarding/onboarding_page.dart';
import '../../ui/pages/sign/sign_page.dart';
import '../../ui/pages/verify/verify_page.dart';
import '../../ui/pages/home/home_page.dart';
import '../../ui/pages/guide_detail/guide_detail_page.dart';

class AppRouter {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String sign = '/sign';
  static const String verify = '/verify';
  static const String home = '/home';
  static const String guideDetail = '/guide-detail';
  static const String chatDetail = '/chat-detail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
        );

      case onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingPage(),
        );

      case sign:
        return MaterialPageRoute(
          builder: (_) => const SignPage(),
        );

      case verify:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => VerifyPage(
            email: args?['email'] as String? ?? '',
            userType: args?['userType'] as String? ?? 'tourist',
          ),
        );

      case home:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case guideDetail:
        final args = settings.arguments as Map<String, dynamic>?;
        final guide = args?['guide'] as Guide?;
        if (guide == null) {
          return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('Guide information is required'),
              ),
            ),
          );
        }
        return MaterialPageRoute(
          builder: (_) => GuideDetailPage(guide: guide),
        );

      case chatDetail:
        final args = settings.arguments as Map<String, dynamic>?;
        final guideName = args?['guideName'] as String?;
        final guideImage = args?['guideImage'] as String?;
        final tags = args?['tags'] as List<String>?;

        if (guideName == null || guideImage == null || tags == null) {
          return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('Guide information is required'),
              ),
            ),
          );
        }
        return MaterialPageRoute(
          builder: (_) => ChatDetailPage(
            guideName: guideName,
            guideImage: guideImage,
            tags: tags,
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }

  // Navigation methods
  static Future<T?> push<T>(BuildContext context, String routeName,
      {Map<String, dynamic>? arguments}) {
    return Navigator.pushNamed(
      context,
      routeName,
      arguments: arguments,
    );
  }

  static Future<T?> pushReplacement<T>(BuildContext context, String routeName,
      {Map<String, dynamic>? arguments}) {
    return Navigator.pushReplacementNamed(
      context,
      routeName,
      arguments: arguments,
    );
  }

  static Future<T?> pushAndRemoveUntil<T>(
      BuildContext context, String routeName,
      {Map<String, dynamic>? arguments}) {
    return Navigator.pushNamedAndRemoveUntil(
      context,
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }

  static void pop<T>(BuildContext context, [T? result]) {
    Navigator.pop(context, result);
  }

  // Helper methods for specific routes
  static Future<T?> navigateToOnboarding<T>(BuildContext context) {
    return pushReplacement<T>(
      context,
      onboarding,
    );
  }

  static Future<T?> toHome<T>(BuildContext context) {
    return pushAndRemoveUntil<T>(
      context,
      home,
    );
  }

  static Future<T?> toGuideDetail<T>(BuildContext context,
      {required Guide guide}) {
    return push<T>(
      context,
      guideDetail,
      arguments: {'guide': guide},
    );
  }

  static Future<T?> toChatDetail<T>(
    BuildContext context, {
    required String guideName,
    required String guideImage,
    required List<String> tags,
  }) {
    return push<T>(
      context,
      chatDetail,
      arguments: {
        'guideName': guideName,
        'guideImage': guideImage,
        'tags': tags,
      },
    );
  }

  static Future<T?> toVerify<T>(
    BuildContext context, {
    required String email,
    required String userType,
  }) {
    return push<T>(
      context,
      verify,
      arguments: {
        'email': email,
        'userType': userType,
      },
    );
  }
}
