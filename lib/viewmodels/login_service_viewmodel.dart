import '../app/app.router.dart';

import 'package:stacked/stacked.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

// class HomeViewArguments {
//   final String title;
//   final int itemCount;

//   HomeViewArguments({required this.title, required this.itemCount});
// }

class LoginServiceViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  // final args = const HomeViewArguments(args: "95");

  navigateToHome(credential) {
    _navigationService.navigateTo(Routes.homeView,
        arguments: HomeViewArguments(args: "${credential.user?.email}"));
  }

  navigateToSignup() {
    _navigationService.navigateToSignupView();
  }

  login(email, password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      navigateToHome(credential);
      print("credential.credential${credential.user?.email}");
    } on FirebaseAuthException catch (e) {
      print("error");
      print(e);
    }
  }
}
