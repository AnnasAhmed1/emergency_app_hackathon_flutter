import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stacked/stacked.dart';

import '../viewmodels/splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        onViewModelReady: (viewModel) {
          Timer(const Duration(seconds: 2), () {
            viewModel.navigateToMain(context);
          });
        },
        viewModelBuilder: () => SplashViewModel(),
        builder: (context, viewModel, child) => const Scaffold(
              body: SafeArea(
                child: Center(
                    child: Image(
                  width: 200,
                  height: 200,
                  image: AssetImage('assets/splash_screen.png'),
                )),
              ),
            ));
  }
}
