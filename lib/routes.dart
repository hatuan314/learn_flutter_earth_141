import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'presentation/home/home_provider.dart';
import 'presentation/home/home_screen.dart';

class AppRouteName {
  static const String home = "/";
}

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(path: AppRouteName.home,builder: (context, state) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider()..getAsiaCountries(),
        child: HomeScreen());
  })
]);