import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:ketri/provider/authProvider.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final fullNameController = TextEditingController();
  final emailAddressController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _formSignUp = GlobalKey<FormState>();
  bool isLoading = false;
  bool isVisible = false;
  bool isMale = true;
  bool isFemale = false;
  bool isOthers = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formSignUp,
            child: ListView(children: [
              const Text(
                "Tell me about you.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.black),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty Value";
                  }
                },
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_2_outlined),
                    label: Text(
                      "User Name",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: emailAddressController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty Value";
                  }
                },
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    label: Text(
                      "Email Address",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty Value";
                  }
                },
                controller: passwordController,
                obscureText: !isVisible,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: isVisible
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off)),
                    label: const Text(
                      "Password",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty Value";
                  } else if (value != passwordController.text) {
                    return "Password not matching!";
                  }
                },
                controller: confirmPasswordController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: InkWell(child: Icon(Icons.visibility)),
                    label: Text(
                      "Confirm Password",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Checkbox(
                    value: isMale,
                    shape: const CircleBorder(),
                    onChanged: (value) {
                      setState(() {
                        isMale = !isMale;
                        isFemale = false;
                        isOthers = false;
                      });
                    },
                  ),
                  const Text(
                    "Male",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: isFemale,
                    shape: CircleBorder(),
                    onChanged: (value) {
                      setState(() {
                        isMale = false;
                        isFemale = !isFemale;
                        isOthers = false;
                      });
                    },
                  ),
                  const Text(
                    "Female",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    shape: CircleBorder(),
                    value: isOthers,
                    onChanged: (value) {
                      setState(() {
                        isMale = false;
                        isFemale = false;
                        isOthers = !isOthers;
                      });
                    },
                  ),
                  const Text(
                    "Others",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () async {
                    // _formSignUp.currentState!.save();
                    // if (_formSignUp.currentState!.validate()) {
                    //   FocusScope.of(context).unfocus();
                    //   setState(() {
                    //     isLoading = true;
                    //   });
                    //   final response = await ref.watch(authprovider).userSignup(
                    //       emailAddressController.text.trim(),
                    //       passwordController.text.trim());
                    //   // await ref
                    //   //     .watch(authprovider)
                    //   //     .userVerify(email: "himalneupane775@gmail.com");
                    //   print(response);

                    //   if (response == "Successful") {
                    //     setState(() {
                    //       isLoading = false;
                    //     });

                    //     // Get.to(() => const UserVerificationPage());
                    //   } else {
                    //     setState(() {
                    //       isLoading = false;
                    //     });
                    //     Get.defaultDialog(
                    //         title: "Error",
                    //         titleStyle:
                    //             TextStyle(color: Colors.black, fontSize: 18.sp),
                    //         middleText: "$response",
                    //         middleTextStyle: TextStyle(color: Colors.black));
                    //   }
                    // } else {
                    //   return null;
                    // }
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 235, 69, 13),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(color: Colors.white, blurRadius: 0.5)
                        ]),
                    child: Center(
                      child: isLoading
                          ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : const Text(
                              "REGISTER",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      );
    });
  }
}
