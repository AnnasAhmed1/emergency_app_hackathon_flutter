import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stacked/stacked.dart';

import '../viewmodels/startscreen_viewmodel.dart';
import '../widgets/container_widget.dart';

class StartscreenView extends StatelessWidget {
  const StartscreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => StartscreenViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContainerWidget(
                    text: "Need Emergency Assistance",
                    // onTap: (viemModel) {
                    //   print("ANNAS");
                    //   viemModel.navigateToLogin;
                    // },
                    onTap: () {
                      print("Annas");
                      viewModel.navigateToLogin();
                    }),
                ContainerWidget(
                    text: "Are You A Service Provider?",
                    // onTap: (viemModel) {
                    //   viemModel.navigateToLogin;
                    // },
                    onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
