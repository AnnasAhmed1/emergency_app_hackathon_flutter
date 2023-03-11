import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../views/home_view.dart';
import '../views/login_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: LoginView, initial: true),
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    Singleton(
      classType: NavigationService,
    ),
    // LazySingleton(
    //     // classType: CounterService,
    //     ),
  ],
)
class App {}
