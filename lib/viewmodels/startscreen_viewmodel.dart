import 'package:hackathon/app/app.locator.dart';
import 'package:hackathon/views/login_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.router.dart';
// import '../views/login_view.dart';

class StartscreenViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  navigateToLogin() {
    _navigationService.navigateTo(
      Routes.loginView,
      arguments: "Annas",
    );
  }
}
