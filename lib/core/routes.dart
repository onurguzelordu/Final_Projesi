import 'package:go_router/go_router.dart';
import 'package:home_decoration/screens/help_desk_screen.dart';
import 'package:home_decoration/screens/home_screen.dart';
import 'package:home_decoration/screens/login_screen.dart';
import 'package:home_decoration/screens/profile_screen.dart';
import 'package:home_decoration/screens/register_screen.dart';
import 'package:home_decoration/screens/search_screen.dart';
import 'package:home_decoration/screens/favourites_screen.dart';
import 'package:home_decoration/screens/loading_screen.dart';

// Router yapılandırması
final router = GoRouter(
  initialLocation: '/', // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/favourites',
      builder: (context, state) => const FavouritesScreen(),
    ),
    GoRoute(
      path: '/helpdesk',
      builder: (context, state) => const HelpDeskScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),


  ],
);
