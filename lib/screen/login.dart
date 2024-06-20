import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:tezda/screen/bottomNavigation.dart';
import 'package:tezda/screen/HomePage/productListScreen.dart';
import 'package:tezda/screen/signUp.dart';
// import 'package:ketri/provider/authProvider.dart';
// import 'package:ketri/view/bottomNavigation.dart';
// import 'package:ketri/view/passwordReset.dart';
// import 'package:ketri/view/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _form = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;
  bool isVisible = false;
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Scaffold(
        body: Form(
          key: _form,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(255, 245, 105, 95),
                  Color.fromARGB(255, 158, 37, 66),
                ])),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Log In.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.w500),
                  ),
                  // const Text(
                  //   "I missed you!",
                  //   style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 22,
                  //       fontWeight: FontWeight.w300),
                  // ),
                  const SizedBox(
                    height: 55,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Email Address",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: isVisible,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                            child: isVisible
                                ? const Icon(
                                    Icons.visibility,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    color: Colors.white,
                                  )),
                        label: const Text(
                          "Password",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => AdminBottomNavigation());
                        // _form.currentState!.save();
                        // if (_form.currentState!.validate()) {
                        //   FocusScope.of(context).unfocus();
                        //   setState(() {
                        //     isLoading = true;
                        //   });
                        //   final response = await ref
                        //       .watch(authprovider)
                        //       .userlogin(emailController.text.trim(),
                        //           passwordController.text.trim());
                        //   print(response.toString());
                        //   await ref.watch(authprovider).getUserName();

                        //   if (response == "Successful") {
                        //     setState(() {
                        //       isLoading = false;
                        //     });

                        //     Get.to(() => AdminBottomNavigation());
                        //   } else {
                        //     setState(() {
                        //       isLoading = false;
                        //     });
                        //     Get.defaultDialog(
                        //         title: "Error",
                        //         middleText: "$response",
                        //         middleTextStyle: TextStyle(color: Colors.black),
                        //         titleStyle: TextStyle(color: Colors.black));
                        //   }
                        // } else {
                        //   return null;
                        // }
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(color: Colors.white, blurRadius: 0.5)
                            ]),
                        child: Center(
                          child: isLoading
                              ? CircularProgressIndicator(
                                  color: Colors.red.shade400,
                                )
                              : const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      // Get.to(() => const PasswordReset());
                    },
                    child: const Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "New User?",
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => const Register());
                        },
                        child: const Text(
                          " Create Account",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
