import 'package:go_router/go_router.dart';
import 'package:home_decoration/screens/home_screen.dart';
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
  ],
);
