import 'package:firebase_database/firebase_database.dart';

DatabaseReference ref = FirebaseDatabase.instance.ref("users/123");

addData() async {
  print("Data base add data");
  try {
    await ref.set({
      "name": "John",
      "age": 18,
      "address": {"line1": "100 Mountain View"}
    });
    print("successfull data base add");
  } catch (e) {
    print("error==>${e}");
  }
}
