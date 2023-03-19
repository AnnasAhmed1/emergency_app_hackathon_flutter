import '../app/app.router.dart';

import 'package:stacked/stacked.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';



class LoginServiceViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  // final args = const HomeViewArguments(args: "95");

  navigateToHome(credential,argument) {
    _navigationService.navigateTo(Routes.homeView,
        arguments: HomeViewArguments(credential: "${credential.user?.email}", argument: argument));
  }

  navigateToSignup() {
    _navigationService.navigateToSignupView(arguments: "");
  }

  login(email, password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      navigateToHome(credential,"");
      print("credential.credential${credential.user?.email}");
    } on FirebaseAuthException catch (e) {
      print("error");
      print(e);
    }
  }
}
