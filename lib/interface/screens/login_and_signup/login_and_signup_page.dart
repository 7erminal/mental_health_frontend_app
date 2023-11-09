import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class LoginAndSignup extends StatefulWidget {
  const LoginAndSignup({Key? key}) : super(key: key);

  static const String id = Urls.login_and_signup;

  @override
  State<LoginAndSignup> createState() => _LoginAndSignupState();
}

class _LoginAndSignupState extends State<LoginAndSignup> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          bottom: TabBar(
            indicatorColor: BrandColors.secondaryColor,
              indicatorSize: TabBarIndicatorSize.tab,
            labelColor: BrandColors.black,
            dividerColor: BrandColors.grey,
            padding: EdgeInsets.symmetric(vertical: 0),
            tabs: [
              Tab(
                child: Text(
                    "LOGIN",
                  style: TextStyle(
                    fontSize: 22
                  ),
                ),
              ),
              Tab(
                child: Text(
                    "SIGN UP",
                  style: TextStyle(
                      fontSize: 22
                  ),
                ),
              )
            ],
          ),
        ),
        body: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Color(0xffFCFAFF)
          ),
          child: TabBarView(
            children: [
              Login(),
              SignUp()
            ],
          ),
        ),
      ),
    );
  }
}
