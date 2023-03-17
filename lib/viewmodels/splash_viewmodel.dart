import 'package:flutter/material.dart';
import 'package:hackathon/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';
import '../views/login_view.dart';

class SplashViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  navigateToMain(context) {
    _navigationService.navigateToStartscreenView();
  }
}
