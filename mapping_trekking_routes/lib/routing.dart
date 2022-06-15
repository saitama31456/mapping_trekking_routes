import 'package:flutter/material.dart';
import 'package:mapping_trekking_routes/constants/classes.dart';
import 'package:mapping_trekking_routes/ui/screens/detail_screen.dart';
import 'package:mapping_trekking_routes/ui/screens/home_screen.dart';
import 'package:mapping_trekking_routes/ui/screens/login_screen.dart';
import 'package:mapping_trekking_routes/ui/screens/profile_screen.dart';
import 'package:mapping_trekking_routes/ui/screens/search_screen.dart';
import 'package:mapping_trekking_routes/ui/screens/splash_screen.dart';
import 'package:mapping_trekking_routes/widget/bottom_nav_bar.dart';

class Routing {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Classes.splashScreen:
        {
          return MaterialPageRoute(
              builder: (_) => const SplashScreen(),
              settings: RouteSettings(name: settings.name));
        }

        case Classes.loginScreen:
        {
          return MaterialPageRoute(
              builder: (_) => const LoginScreen(),
              settings: RouteSettings(name: settings.name));
        }

      case Classes.bottomNav:
        {
          return MaterialPageRoute(
              builder: (_) => const BottomNavBar(),
              settings: RouteSettings(name: settings.name));
        }

      case Classes.homeScreen:
        {
          return MaterialPageRoute(
              builder: (_) => const HomeScreen(),
              settings: RouteSettings(name: settings.name));
        }
      
      case Classes.detailScreen:
        {
          return MaterialPageRoute(
              builder: (_) => const DetailScreen(),
              settings: RouteSettings(name: settings.name));
        }
      
      case Classes.profileScreen:
        {
          return MaterialPageRoute(
              builder: (_) => const ProfileScreen(),
              settings: RouteSettings(name: settings.name));
        }

      case Classes.searchScreen:
        {
          return MaterialPageRoute(
              builder: (_) => const SearchScreen(),
              settings: RouteSettings(name: settings.name));
        }

      default:
        return MaterialPageRoute(
            builder: (_) => const SplashScreen(), settings: settings);
    }
  }
}
