import 'package:go_router/go_router.dart';
import 'package:home_decoration/screens/help_desk_screen.dart';
import 'package:home_decoration/screens/history_screen.dart';
import 'package:home_decoration/screens/home_screen.dart';
import 'package:home_decoration/screens/profile_screen.dart';
import 'package:home_decoration/screens/search_screen.dart';
import 'package:home_decoration/screens/voice.screen.dart';
import '../screens/loading_screen.dart';


// Router yapılandırması
final router = GoRouter(
  initialLocation: '/',  // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/voice',
      builder: (context, state) => const VoiceScreen(),
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
      path: '/history',
      builder: (context, state) => const HistoryScreen(),
    ),


  ],
);
















