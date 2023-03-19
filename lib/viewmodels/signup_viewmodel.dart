import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:hackathon/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class SignupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
// final DatabaseReference ref = FirebaseDatabase.instance.ref("users/123");

  navigateToLogin(argument) {
    _navigationService.navigateToLoginView(
      argument: argument,
    );
  }

  navigateToSignup() {
    _navigationService.navigateToSignupServiceView();
  }

  addDataUser(
    ref,
    firstName,
    lastName,
    email,
    password,
    mobileNumber,
  ) async {
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

  signup(
    ref,
    firstName,
    lastName,
    email,
    password,
    mobileNumber,
    arguments,
  ) async {
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
        addDataUser(ref, firstName, lastName, email, password, mobileNumber);
        navigateToLogin(arguments);
        print(credential);
      } on FirebaseAuthException catch (e) {
        print(e);
      }
    }
  }

  addDataService(
      ref, firstName, lastName, email, password, service, mobileNumber) async {
    print("Service provider Data base add data");
    try {
      await ref.set({
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "service": service,
        "password": password,
      });
      print(" service provider successfull data base add");
    } catch (e) {
      print("serice provider error==>${e}");
    }
  }

  signupService(
    ref,
    firstName,
    lastName,
    email,
    password,
    service,
    mobileNumber,
    arguments,
  ) async {
    service = service.toLowerCase();
    print(service);
    if (firstName.length == 0 ||
        lastName.length == 0 ||
        email.length == 0 ||
        password.length == 0 ||
        service.length == 0 ||
        mobileNumber.length == 0) {
      print("Service provider required feilds are missing");
    } else if (service == "ambulance" ||
        service == "police" ||
        service == "firebrigade") {
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        addDataService(
          ref,
          firstName,
          lastName,
          email,
          password,
          service,
          mobileNumber,
        );
        navigateToLogin(arguments);
        print(credential);
      } on FirebaseAuthException catch (e) {
        print(e);
      }
    } else {
      print("Wrong service choosen");
    }
  }
}
