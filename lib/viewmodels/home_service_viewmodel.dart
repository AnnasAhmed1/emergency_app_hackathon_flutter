import 'package:stacked/stacked.dart';

class HomeServicesViewModel extends BaseViewModel {
  addData(
      ref, requestFrom, requestFor, emergencyLevel, latitude, longitude) async {
    print("Service provider Data base add data");
    try {
      await ref.set({
        "request_from": requestFrom,
        "request_for": requestFor,
        "emergency_level": emergencyLevel,
        "latitude": latitude,
        "longitude": longitude
      });
      print(" service provider successfull data base add");
    } catch (e) {
      print("serice provider error==>${e}");
    }
  }
}
