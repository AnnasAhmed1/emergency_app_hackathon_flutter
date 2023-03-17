import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../views/home_services_view.dart';
import '../views/home_view.dart';
import '../views/login_services_view.dart';
import '../views/login_view.dart';
import '../views/signup_service_view.dart';
import '../views/signup_view.dart';
import '../views/splash_view.dart';
import '../views/startscreen_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: SignupServiceView),
    MaterialRoute(page: LoginServiceView),
    MaterialRoute(page: HomeServicesView),
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: StartscreenView),
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
