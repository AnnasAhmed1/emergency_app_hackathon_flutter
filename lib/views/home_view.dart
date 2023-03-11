import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stacked/stacked.dart';

import '../firebase_database.dart';
import '../viewmodels/home_viewmodel.dart';
import '../widgets/bottomsheet.dart';
import '../widgets/service_card.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

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

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onViewModelReady: (viewModel) {},
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewMoel, child) => Scaffold(
        // floatingActionButton: ,
        appBar: AppBar(
          title: Text("Emargency App"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            ElevatedButton(onPressed: addData, child: Text("Check database")),
            Expanded(
              child: ListView.builder(
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return serviceCard(
                      context,
                      () => openBottomSheet(
                        context,
                        services[index]["levels"],
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
