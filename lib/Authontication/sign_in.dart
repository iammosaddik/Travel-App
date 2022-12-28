import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:uitest/Authontication/sign_up.dart';

import '../Page All/home.dart';
import '../Repository/auth_repo.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 270,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('images/signIn1.JPG'),
                  fit: BoxFit.fill,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const Text(
                      'Please Sign In',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    AppTextField(
                      textFieldType: TextFieldType.EMAIL,
                      controller: emailAddressController,
                      decoration: InputDecoration(
                          hintText: 'Please Enter Your Email',
                          labelText: 'Email Address',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AppTextField(
                      textFieldType: TextFieldType.PASSWORD,
                      controller: passwordController,
                      decoration: InputDecoration(
                          hintText: 'Enter Your Password',
                          labelText: 'Password',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: (() async {
                        if (emailAddressController.text.isEmpty) {
                          toast('Please Enter Your Email');
                        } else if (passwordController.text.isEmpty) {
                          toast('Please Enter Your Password');
                        } else {
                          try {
                            EasyLoading.show(status: 'Signing In...');
                            bool status = await AuthRepo().signInWithEmail(
                                emailAddressController.text,
                                passwordController.text);
                            if (status) {
                              EasyLoading.showSuccess('Sign In Successful');
                              Home().launch(context);
                            } else {
                              EasyLoading.showError(
                                  'Email or Password is wrong');
                            }
                          } catch (e) {
                            EasyLoading.showError(e.toString());
                          }
                        }
                      }),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const Center(
                            child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account yet?',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const Text(
                          'Sign Up Here',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ).onTap(() => const SignUp().launch(context))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
