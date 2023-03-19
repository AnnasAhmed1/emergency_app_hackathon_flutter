import 'package:firebase_database/firebase_database.dart';
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
  late String arguments;
  SignupView({
    super.key,
    required this.arguments,
  });
  final Map<String, TextEditingController> _controllers_list = {
    "first_name": _firstName_controller,
    "last_name": _lastName_controller,
    "email_address_signup": _email_controller,
    "password_signup": _password_controller,
    "mobile_number": _mobileNumber_controller,
    "service": _service_controller,
  };
  final List<String> txtlist = [
    "First Name",
    "Last Name",
    "Email Address",
    "Password",
    "Mobile Number",
    "Service",
  ];
  // late bool serviceProviderStatus = false;
  // late String serviceProvider = "value";
  // late String service = "value";
  // final DatabaseReference ref = FirebaseDatabase.instance.ref("users/123");
  // final DatabaseReference ref;
  @override
  Widget build(BuildContext context) {
    print(arguments);
    return ViewModelBuilder<SignupViewModel>.reactive(
      onViewModelReady: (viewModel) {},
      viewModelBuilder: () => SignupViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              Image(
                height: 150,
                width: MediaQuery.of(context).size.width * 1,
                image: const AssetImage(
                  "assets/login.jpeg",
                ),
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        arguments == "user"
                            ? "Customer SignUp"
                            : "Service Provider SignUp",
                        style: const TextStyle(
                          fontSize: 19.0,
                          fontFamily: "Poppins",
                          color: Color(0xff0e0e0e),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.60,
                        child: ListView.builder(
                          itemCount: arguments == "user" ? 5 : 6,
                          itemBuilder: (context, index) {
                            String controllerName =
                                _controllers_list.keys.elementAt(index);
                            return InputFeild(txtlist[index], null,
                                _controllers_list[controllerName]!);
                          },
                        ),
                      ),
                      Center(
                        child: ButtonWidget(
                          "Register Now",
                          context,
                          () {
                            arguments == "user"
                                ? viewModel.signup(
                                    FirebaseDatabase.instance.ref(
                                        "app_database/users/${_email_controller.text.split(".")[0]}"),
                                    _firstName_controller.text,
                                    _lastName_controller.text,
                                    _email_controller.text,
                                    _password_controller.text,
                                    _mobileNumber_controller.text,
                                    arguments,
                                  )
                                : viewModel.signupService(
                                    FirebaseDatabase.instance.ref(
                                        "app_database/service_providers/${_service_controller.text}/${_email_controller.text.split(".")[0]}"),
                                    _firstName_controller.text,
                                    _lastName_controller.text,
                                    _email_controller.text,
                                    _password_controller.text,
                                    _service_controller.text,
                                    _mobileNumber_controller.text,
                                    arguments,
                                  );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have account?",
                            style: TextStyle(
                              fontSize: 11.0,
                              fontFamily: "Poppins",
                              color: Color(0xff0e0e0e),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextButton(
                            child: Text(
                              "SignIn",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              viewModel.navigateToLogin(arguments);
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

TextEditingController _email_controller = TextEditingController();
TextEditingController _password_controller = TextEditingController();
TextEditingController _firstName_controller = TextEditingController();
TextEditingController _lastName_controller = TextEditingController();
TextEditingController _mobileNumber_controller = TextEditingController();
TextEditingController _service_controller = TextEditingController();
