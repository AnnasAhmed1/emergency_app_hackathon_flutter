import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
// import 'package:stranded_driver/screens/customer_module/signup.dart';
// import 'package:stranded_driver/screens/customer_module/forgot_password.dart';
// import 'package:stranded_driver/screens/customer_module/verification.dart';
// import 'package:stranded_driver/widgets/text_navigation.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/input_feild.dart';
import '../viewmodels/signup_viewmodel.dart';
import '../widgets/text_navigation.dart';

class SignupView extends StatelessWidget {
  SignupView({Key? key}) : super(key: key);
  final Map<String, TextEditingController> _controllers_list = {
    "first_name": TextEditingController(),
    "last_name": TextEditingController(),
    "email_address_signup": TextEditingController(),
    "password_signup": TextEditingController(),
    "mobile_number": TextEditingController(),
    "ref_code": TextEditingController(),
  };
  final List<String> txtlist = [
    "First Name",
    "Last Name",
    "Email Address",
    "Password",
    "Mobile Number",
    "Referral Code (Optional)"
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupViewModel>.reactive(
        onViewModelReady: (viewModel) {},
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, viewMoel, child) => SafeArea(
              child: Scaffold(
                body: SingleChildScrollView(
                  reverse: true,
                  child: Container(
                    child: Column(
                      children: [
                        // SizedBox(height: 60),
                        Image(
                          height: 150,
                          width: MediaQuery.of(context).size.width * 1,
                          // height: MediaQuery.of(context).size.height * 0.20,
                          image: AssetImage(
                            "assets/login.avif",
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.75,
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  " SignUp",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Expanded(
                                  child: ListView.builder(
                                      itemCount: txtlist.length,
                                      itemBuilder: (context, index) {
                                        String controllerName =
                                            _controllers_list.keys
                                                .elementAt(index);
                                        return InputFeild(txtlist[index], null,
                                            _controllers_list[controllerName]!);
                                      }),
                                ),
                                Center(
                                  child: ButtonWidget(
                                      "Register Now", context, () {}),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Already have account?",
                                      style: TextStyle(
                                        fontSize: 11.0,
                                        fontFamily: "Poppins",
                                        color: const Color(0xff0e0e0e),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextNavigation(
                                      "SignIn",
                                      Theme.of(context).primaryColor,
                                      context,
                                      () {},
                                    )
                                    // text_button(
                                    //     "SignIn", Theme.of(context).primaryColor, null)
                                  ],
                                ),
                                // inst.but("Already have account?", "SignIn", context)
                              ],
                            ),
                          ),
                        )
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
