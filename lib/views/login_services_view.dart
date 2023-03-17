import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
// import 'package:stranded_driver/screens/customer_module/signup.dart';
// import 'package:stranded_driver/screens/customer_module/forgot_password.dart';
// import 'package:stranded_driver/screens/customer_module/verification.dart';
// import 'package:stranded_driver/widgets/text_navigation.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/input_feild.dart';
import '../viewmodels/login_service_viewmodel.dart';
import '../viewmodels/login_viewmodel.dart';
import '../widgets/text_navigation.dart';

class LoginServiceView extends StatelessWidget {
  const LoginServiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginServiceViewModel>.reactive(
        onViewModelReady: (viewModel) {},
        viewModelBuilder: () => LoginServiceViewModel(),
        builder: (context, viewModel, child) => SafeArea(
              child: Scaffold(
                body: SingleChildScrollView(
                  reverse: true,
                  child: Container(
                    child: Column(
                      children: [
                        Image(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.width * 0.7,
                          // height: 300,
                          image: AssetImage(
                            'assets/login.jpeg',
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Center(
                            child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Service Provider Login",
                                  style: TextStyle(
                                    fontSize: 19.0,
                                    fontFamily: "Poppins",
                                    color: Color(0xff0e0e0e),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InputFeild(
                                  "Email",
                                  Icon(
                                    Icons.alternate_email_sharp,
                                    size: 18,
                                    color: Color(0xff0e0e0e).withOpacity(0.25),
                                  ),
                                  _email_controller,
                                ),
                                InputFeild(
                                  "Password",
                                  Icon(
                                    Icons.lock,
                                    size: 18,
                                    color: Color(0xff0e0e0e).withOpacity(0.25),
                                  ),
                                  _password_controller,
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: TextNavigation(
                                      "Forget Password?",
                                      Theme.of(context).cardColor,
                                      context,
                                      () {},
                                    )),
                                Center(
                                    child: ButtonWidget("SignIn", context, () {
                                  viewModel.login(
                                    _email_controller.text,
                                    _password_controller.text,
                                  );
                                })),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Don't have account?",
                                      style: TextStyle(
                                        fontSize: 11.0,
                                        fontFamily: "Poppins",
                                        color: const Color(0xff0e0e0e),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextButton(
                                      child: Text(
                                        "Register Now!",
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      onPressed: () {
                                        viewModel.navigateToSignup();
                                      },
                                    ),
                                  ],
                                ),
                              ]),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}

TextEditingController _email_controller = TextEditingController();
TextEditingController _password_controller = TextEditingController();
