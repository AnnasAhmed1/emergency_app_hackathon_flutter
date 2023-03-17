import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:hackathon/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class SignupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
// final DatabaseReference ref = FirebaseDatabase.instance.ref("users/123");

  // navigateToHome() {
  //   _navigationService.navigateToHomeView();
  // }

  navigateToLogin() {
    _navigationService.navigateToLoginView(
      argument: "Annas",
    );
  }

  navigateToSignup() {
    _navigationService.navigateToSignupServiceView();
  }

  addData(ref, firstName, lastName, email, password, mobileNumber) async {
    print("Data base add data");
    try {
      await ref.set({
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "password": password,
      });
      print("successfull data base add");
    } catch (e) {
      print("error==>${e}");
    }
  }

  signup(ref, firstName, lastName, email, password, mobileNumber) async {
    if (firstName.length == 0 ||
        lastName.length == 0 ||
        email.length == 0 ||
        password.length == 0 ||
        mobileNumber.length == 0) {
      print("Required feilds are missing");
    } else {
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        addData(ref, firstName, lastName, email, password, mobileNumber);
        navigateToLogin();
        print(credential);
      } on FirebaseAuthException catch (e) {
        print(e);
      }
    }
  }

  // addDataServiceProvider(ref, firstName, lastName, email, password,service, mobileNumber) async {
  //   print("Service provider Data base add data");
  //   try {
  //     await ref.set({
  //       "first_name": firstName,
  //       "last_name": lastName,
  //       "email": email,
  //     "service":  service,
  //       "password": password,
  //     });
  //     print(" service provider successfull data base add");
  //   } catch (e) {
  //     print("serice provider error==>${e}");
  //   }
  // }

  // signupServiceProvider(ref, firstName, lastName, email, password,service, mobileNumber) async {
  //   if (!firstName || !lastName || !email || !password || !service || !mobileNumber) {
  //     print("Service provider required feilds are missing");
  //   } else {
  //     try {
  //       final credential =
  //           await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: email,
  //         password: password,
  //       );
  //       addData(ref, firstName, lastName, email, password, mobileNumber);
  //       navigateToLogin();
  //       print(credential);
  //     } on FirebaseAuthException catch (e) {
  //       print(e);
  //     }
  //   }
  // }
}
