import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:medical_application/index.dart';
import 'package:provider/provider.dart';

class DiagnosisLandingPage extends StatefulWidget {
  const DiagnosisLandingPage({Key? key}) : super(key: key);

  static const String id = Urls.diagnosisLandingPage;

  @override
  State<DiagnosisLandingPage> createState() => _DiagnosisLandingPageState();
}

class _DiagnosisLandingPageState extends State<DiagnosisLandingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    // Navigator.of(context).pushReplacement(
    //   MaterialPageRoute(builder: (_) => const HomePage()),
    // );
    Navigator.pushNamed(context, DiagnosisPage.id);
  }

  @override
  Widget build(BuildContext context) {
    final userBloc = Provider.of<UserBloc>(context);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700, color: Colors.black),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          children: [
            Center(
              child: Image.asset(
            Assets.man,
            // width: 420,
            // height: 420,
          ),
            ),
            Container(
              width: width,
              height: height * 0.5,
              child: IntroductionScreen(
                key: introKey,
                globalBackgroundColor: Colors.white,
                allowImplicitScrolling: true,
                autoScrollDuration: 3000,
                infiniteAutoScroll: true,
                // globalHeader: Align(
                //   alignment: Alignment.topRight,
                //   child: SafeArea(
                //     child: Padding(
                //       padding: const EdgeInsets.only(top: 16, right: 16),
                //       child: Image.asset(
                //         Assets.man,),
                //     ),
                //   ),
                // ),
                globalFooter: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: CustomButton(
                    // width: width * 0.9,
                    elevation: 2.0,
                    onPressed: () {
                      _onIntroEnd(context);
                    },
                    // buttonColor: BrandColors.primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                            "Get Started",
                            style: TextStyle(
                              color: BrandColors.colorWhiteAccent,
                              fontWeight: FontWeight.w400,
                              fontSize: 22.0,
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                pages: [
                  PageViewModel(
                    title: "",
                    // body: "Instead of having to buy an entire share, invest any amount you want.",
                    bodyWidget: Text(
                      "Hi ${userBloc.userModel.fullName}, we're here to help you understand and improve your mental well-being.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    // image: Image.asset(
                    //   Assets.man,),
                    decoration: pageDecoration,
                  ),
                  PageViewModel(
                    title: "",
                    // body: "",
                    bodyWidget: Text(
                      "Hi ${userBloc.userModel.fullName}, we're here to help you understand and improve your mental well-being.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    // image: Image.asset(
                    //     Assets.man,),
                    decoration: pageDecoration,
                  ),
                  PageViewModel(
                    title: "",
                    // body: "Kids and teens can track their stocks 24/7 and place trades that you approve.",
                    // image: Image.asset(
                    //   Assets.man,),
                    bodyWidget: Text(
                      "Hi ${userBloc.userModel.fullName}, we're here to help you understand and improve your mental well-being.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    decoration: pageDecoration,
                  ),
                ],
                onDone: () => _onIntroEnd(context),
                onSkip: () => _onIntroEnd(context), // You can override onSkip callback
                showSkipButton: false,
                skipOrBackFlex: 0,
                nextFlex: 0,
                showBackButton: false,
                showNextButton: false,
                //rtl: true, // Display as right-to-left
                // back: const Icon(Icons.arrow_back),
                // skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
                // next: const Icon(Icons.arrow_forward),
                // done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
                showDoneButton: false,
                curve: Curves.fastLinearToSlowEaseIn,
                controlsMargin: const EdgeInsets.all(16),
                controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                dotsDecorator: const DotsDecorator(
                  size: Size(10.0, 10.0),
                  color: BrandColors.primaryColor,
                  activeColor: BrandColors.primaryColor,
                  activeSize: Size(42.0, 10.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                ),
                dotsContainerDecorator: const ShapeDecoration(
                  // color: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


