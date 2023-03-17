import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stacked/stacked.dart';

// import '../app/app.router.dart';
import '../app/app.router.dart';
import '../firebase_database.dart';
import '../viewmodels/home_service_viewmodel.dart';
import '../viewmodels/home_viewmodel.dart';
import '../viewmodels/login_viewmodel.dart';
import '../widgets/bottomsheet.dart';
import '../widgets/service_card.dart';

class HomeServicesView extends StatelessWidget {
  // HomeServicesView({super.key});

  final List<Map> services = [
    {
      "title": "Ambulance Emergency Service",
      "onTap": () {},
      "levels": [
        "Medical Emergency",
        "Fire",
        "Accident",
      ]
    },
    {
      "title": "FireBrigade Emergency Service",
      "onTap": () {},
      "levels": [
        "Fire",
        "Cylinder Blast",
        "Short Circuit",
      ]
    },
    {
      "title": "Police Emergency Service",
      "onTap": () {},
      "levels": [
        "Fight/Fire",
        "Robbery",
        "Harrasment",
      ]
    },
  ];
  // late HomeServicesViewArguments args;
  late String args;
  late dynamic check;
  late dynamic refe;

  getata() async {
    // refe=;
    await FirebaseDatabase.instance
        .ref("app_database/service_providers/")
        .once()
        .then((snapshot) {
      print(snapshot.snapshot.children.single.value);
      if (snapshot != null) {
        // The reference is invalid
        print('reference is from users');
      } else {
        print('reference is from service_providers');
      }
    });
  }

  HomeServicesView({super.key, required this.args});
  @override
  Widget build(BuildContext context) {
    print("args==>${args}");
    return ViewModelBuilder<HomeServicesViewModel>.reactive(
      onViewModelReady: (viewModel) {},
      viewModelBuilder: () => HomeServicesViewModel(),
      builder: (context, viewMoel, child) => Scaffold(
        appBar: AppBar(
          title: Text("Emargency App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return serviceCard(
                      context,
                      () => openBottomSheet(
                        context,
                        services[index]["levels"],
                        (i) {
                          print("request_from=>${args}");
                          print("request_for=>${services[index]["title"]}");
                          print("emergency_level=>${i}");
                          getata();
                          print("latitude=>latitude");
                          print("longitu=> longitude");
                        },
                      ),
                      services[index]["title"],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
