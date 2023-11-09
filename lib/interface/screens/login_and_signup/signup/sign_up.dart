import 'package:flutter/material.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:medical_application/index.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);
  static final _formKey = GlobalKey<FormState>();

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final userBloc = Provider.of<UserBloc>(context);

    return Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Color(0xffFCFAFF)
        ),
        child: Form(
          key: SignUp._formKey,
          child: ListView(
            children: [
              SizedBox(height: 30,),
              Center(
                  child: BrandLogoText()
              ),
              SizedBox(height: 50,),
              CustomTextBox1(placeholderText: "Full name", controller: nameController,),
              SizedBox(height: 10,),
              CustomTextBox1(placeholderText: "Email", controller: emailController,),
              SizedBox(height: 10,),
              CustomTextBox1(placeholderText: "New password", controller: passwordController, isPassword: showPassword == false ? true : false),
              SizedBox(height: 10,),
              CustomTextBox1(placeholderText: "Confirm password", controller: passwordConfirmController, isPassword: showPassword == false ? true : false),
              SizedBox(height: 5,),
              Row(
                children: [
                  IconButton(onPressed: (){ setState(() {
                    showPassword = !showPassword;
                  }); },icon: showPassword== true ? Icon(Icons.remove_red_eye_rounded) : Icon(Icons.remove_red_eye_outlined)),
                ],
              ),
              SizedBox(height: 50,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: EasyRichText(
                  textAlign: TextAlign.center,
                  "By signing up, you agree to our Terms, Data Policy and Cookies Policy.",
                  patternList: [
                    EasyRichTextPattern(
                        targetString: "Terms",
                        style: const TextStyle(
                            fontSize: 12,
                            color: BrandColors.black,
                            fontWeight: FontWeight.w600
                        )
                    ),
                    EasyRichTextPattern(
                        targetString: "Data Policy",
                        style: const TextStyle(
                            fontSize: 12,
                            color: BrandColors.black,
                            fontWeight: FontWeight.w600
                        )
                    ),
                    EasyRichTextPattern(
                        targetString: "Cookies Policy",
                        style: const TextStyle(
                            fontSize: 12,
                            color: BrandColors.black,
                            fontWeight: FontWeight.w600
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              // Spacer(),
              CustomButton(
                width: width * 0.9,
                elevation: 2.0,
                onPressed: () async{
                  if(passwordConfirmController.text != null && passwordConfirmController.text.trim() != '' &&
                      passwordController.text != null && passwordController.text.trim() != '' &&
                      emailController.text != null && emailController.text.trim() != '' &&
                      nameController.text != null && nameController.text.trim() != ''
                  ){
                    if(passwordController.text == passwordConfirmController.text) {
                      showLoading(context);
                      var registerResponse = await HelperFunctions.signUp(
                          email: emailController.text,
                          password: passwordController.text,
                          name: nameController.text);

                      Navigator.pop(context);

                      debugPrint("Response is $registerResponse");

                      if (registerResponse['StatusCode'] == 200) {
                        userBloc.updateUser(registerResponse['User']);
                        Future.delayed(const Duration(milliseconds: 3000), () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (BuildContext context) => HomePage()));
                        });

                        showCustomFlushBar(context: context,
                            messageText: "Thank you for joining",
                            backgroundColor: BrandColors.secondaryColor);
                      } else {
                        showCustomFlushBar(context: context,
                            messageText: "${registerResponse['StatusDesc']}",
                            backgroundColor: BrandColors.secondaryColor);
                      }
                    } else {
                      showCustomFlushBar(context: context,
                          messageText: "Passwords entered do not match",
                          backgroundColor: BrandColors.secondaryColor);
                    }

                    // Navigator.pushNamed(context, HomePage.id);

                  } else {
                    showCustomFlushBar(context: context, messageText: "Please complete the form to proceed");
                  }

                },
                // buttonColor: BrandColors.primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        "Sign Up",
                        style: TextStyle(
                          color: BrandColors.colorWhiteAccent,
                          fontWeight: FontWeight.w400,
                          fontSize: 22.0,
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Spacer()
            ],
          ),
        )
    );
  }
}
