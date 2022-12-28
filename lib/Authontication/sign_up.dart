import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:uitest/Authontication/sign_in.dart';

import '../Repository/auth_repo.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 70.0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black45,
                          width: 2.0,
                          style: BorderStyle.solid), //Border.all
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            decorationColor: Colors.black,
                            decorationThickness: 2.0,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppTextField(
                          textFieldType: TextFieldType.NAME,
                          controller: nameController,
                          decoration: InputDecoration(
                              hoverColor: Colors.black,
                              hintText: 'Please Enter Your Name',
                              labelText: 'Full Name',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AppTextField(
                          textFieldType: TextFieldType.EMAIL,
                          controller: emailAddressController,
                          decoration: InputDecoration(
                              hintText: 'Please Enter Your Email',
                              labelText: 'Email Address',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AppTextField(
                          textFieldType: TextFieldType.PHONE,
                          controller: phoneNumberController,
                          decoration: InputDecoration(
                              hintText: 'Enter Your Phone Number',
                              labelText: 'Phone Number',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
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
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AppTextField(
                          textFieldType: TextFieldType.PASSWORD,
                          controller: confirmPasswordController,
                          decoration: InputDecoration(
                              hintText: 'Re-Enter Your Password',
                              labelText: 'Confirm Password',
                              filled: true,
                              fillColor: Color(0xffFFE7E7),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0))),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        // another sign option here....
                        // ElevatedButton(onPressed: () async{
                        //   if(emailAddressController.text.isEmpty){
                        //     toast('Please Enter Your Email Address');
                        //   } else if(nameController.text.isEmpty){
                        //     toast('Please Enter Your Name');
                        //   }
                        //   else if(phoneNumberController.text.isEmpty){
                        //     toast('Please Enter Your phone Number');
                        //   }
                        //   else if(passwordController.text.isEmpty){
                        //     toast('Please Enter Your Password');
                        //   } else if(passwordController.text.length < 6){
                        //     toast('Password should be at least 6 digit');
                        //   } else{
                        //     try{
                        //       EasyLoading.show(status: 'Signing Up...');
                        //       bool status = await _authRepo.signUpWithEmail(nameController.text,
                        //           emailAddressController.text, phoneNumberController.text, passwordController.text);
                        //       if(status){
                        //         EasyLoading.showSuccess('Sign Up Successful');
                        //       } else{
                        //         EasyLoading.showError('Something Went Wrong, Try Again');
                        //       }
                        //     }catch(e){
                        //       EasyLoading.showError(e.toString());
                        //     }
                        //   }
                        // }, child: Padding(
                        //   padding: const EdgeInsets.all(10.0),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: const [
                        //       Text('Sign Up',style: TextStyle(fontSize: 18.0),),
                        //     ],
                        //   ),
                        // )),

                        InkWell(
                          onTap: (() async {
                            if (emailAddressController.text.isEmpty) {
                              toast('Please Enter Your Email');
                            } else if (nameController.text.isEmpty) {
                              toast('Please Enter Your Name');
                            } else if (phoneNumberController.text.isEmpty) {
                              toast('Please Enter Your Phone Number');
                            } else if (passwordController.text.isEmpty) {
                              toast('Please Enter Your Password');
                            } else if (passwordController.text.length < 6) {
                              toast('Should be at lest 6 digit');
                            } else if (confirmPasswordController.text !=
                                passwordController.text) {
                              toast('Password Don\'t Match');
                            } else {
                              try {
                                EasyLoading.show(status: 'Signing In...');
                                bool status = await AuthRepo().signUpWithEmail(
                                    nameController.text,
                                    emailAddressController.text,
                                    phoneNumberController.text,
                                    passwordController.text,
                                    confirmPasswordController.text);
                                if (status) {
                                  EasyLoading.showSuccess('Sign Up Successful');
                                  const SignIn().launch(context);
                                } else {
                                  EasyLoading.showError(
                                      'Something went wrong please try again');
                                }
                              } catch (e) {
                                EasyLoading.showError(e.toString());
                              }
                            }
                          }),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
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
                              'Already have an account? ',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const Text(
                              'Sign In Here',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ).onTap(() => const SignIn().launch(context))
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
      ),
    );
  }
}
