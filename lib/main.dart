import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hackathon/aaa.dart';
import 'package:hackathon/screens/login.dart';
import 'firebase_options.dart';
import 'screens/map_screen.dart';
import 'screens/signup.dart';
import 'views/home_view.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  // FirebaseDatabase database = FirebaseDatabase.instance;
  // DatabaseReference ref = database.ref();
  // DatabaseReference ref = FirebaseDatabase.instance.ref();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
   final Map<int, Color> color = {
      50: Color.fromRGBO(253, 171, 26, .1),
      100: Color.fromRGBO(253, 171, 26, .2),
      200: Color.fromRGBO(253, 171, 26, .3),
      300: Color.fromRGBO(253, 171, 26, .4),
      400: Color.fromRGBO(253, 171, 26, .5),
      500: Color.fromRGBO(253, 171, 26, .6),
      600: Color.fromRGBO(253, 171, 26, .7),
      700: Color.fromRGBO(253, 171, 26, .8),
      800: Color.fromRGBO(253, 171, 26, .9),
      900: Color.fromRGBO(253, 171, 26, 1),
    };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFFFFFFF),
          primarySwatch: MaterialColor(0xFFFDAB1A, color),
          primaryColor: const Color(0xFFFDAB1A),),
      home: HomeView(),
    );
  }
}
