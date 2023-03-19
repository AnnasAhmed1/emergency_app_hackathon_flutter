import '../app/app.router.dart';

import 'package:stacked/stacked.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  navigateToHome(credential, argument) {
    _navigationService.navigateTo(
      Routes.homeView,
      arguments: HomeViewArguments(
        credential: "${credential.user?.email}",
        argument: argument,
      ),
    );
  }

  navigateToHomeService(credential, argument) {
    _navigationService.navigateTo(
      Routes.homeServicesView,
      arguments: HomeServicesViewArguments(
        cerdentials: "${credential.user?.email}",
        arguments: argument,
      ),
    );
  }

  navigateToSignup(arguments) {
    _navigationService.navigateTo(
      Routes.signupView,
      arguments: SignupViewArguments(
        arguments: arguments,
      ),
    );
  }

  login(email, password, argument) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      argument == "user"
          ? navigateToHome(
              credential,
              argument,
            )
          : navigateToHomeService(
              credential,
              argument,
            );

      print("credential.credential${credential.user?.email}");
    } on FirebaseAuthException catch (e) {
      print("error");
      print(e);
    }
  }
}
