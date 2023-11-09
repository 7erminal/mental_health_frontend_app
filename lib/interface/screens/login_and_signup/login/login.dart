import 'package:flutter/material.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:medical_application/index.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);
  static final _formKey = GlobalKey<FormState>();

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  bool showPassword = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    // super.dispose();
  }

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
        key: Login._formKey,
        child: Column(
          children: [
            Spacer(),
            Center(
              child: BrandLogoText()
            ),
            SizedBox(height: 80,),
            CustomTextBox1(placeholderText: "Email", controller: emailController,),
            SizedBox(height: 10,),
            CustomTextBox1(placeholderText: "Password", controller: passwordController, isPassword: showPassword == false ? true : false,),
            SizedBox(height: 5,),
            Row(
              children: [
                IconButton(onPressed: (){ setState(() {
                  showPassword = !showPassword;
                }); },icon: showPassword== true ? Icon(Icons.remove_red_eye_rounded) : Icon(Icons.remove_red_eye_outlined)),
              ],
            ),
            SizedBox(height: 30,),
            EasyRichText(
              "Forgotton Password?    Reset",
              patternList: [
                EasyRichTextPattern(
                    targetString: "Forgotton Password?",
                    style: const TextStyle(
                        fontSize: 12,
                        color: BrandColors.black,
                      fontWeight: FontWeight.w600
                    )
                ),
                EasyRichTextPattern(
                    targetString: "Reset",
                    style: const TextStyle(
                        fontSize: 12,
                        color: BrandColors.secondaryColor,
                        fontWeight: FontWeight.bold
                    )
                )
              ],
            ),
            SizedBox(height: 80,),
            // Spacer(),
            CustomButton(
              width: width * 0.9,
              elevation: 2.0,
              onPressed: () async {
                if(emailController.text != null && emailController.text != '' && passwordController.text != null && passwordController.text != ''){

                  showLoading(context);
                  debugPrint("sending ... ${emailController.text} and ${passwordController.text}");
                  var validateCredentialsResponse = await HelperFunctions.validateCredentials(email: emailController.text, password: passwordController.text);
                  debugPrint("Validate credentials response is $validateCredentialsResponse");
                  Navigator.pop(context);

                  if(validateCredentialsResponse['StatusCode']==200){
                    userBloc.updateUser(validateCredentialsResponse['User']);

                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
                  } else {
                    showCustomFlushBar(context: context, messageText: "${validateCredentialsResponse['StatusDesc']}", backgroundColor: BrandColors.secondaryColor);
                  }

                  // Navigator.pushNamed(context, HomePage.id);
                }
              },
              // buttonColor: BrandColors.primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      "Login",
                      style: TextStyle(
                        color: BrandColors.colorWhiteAccent,
                        fontWeight: FontWeight.w400,
                        fontSize: 22.0,
                      )
                  ),
                ],
              ),
            ),
            Spacer()
          ],
        ),
      )
    );
  }
}
