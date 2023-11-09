import 'package:flutter/material.dart';
import 'package:medical_application/core/brand/brand_colors.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:medical_application/index.dart';
import 'package:provider/provider.dart';
import 'dart:async';

class QuotesSlider extends StatefulWidget {
  const QuotesSlider({Key? key}) : super(key: key);

  @override
  State<QuotesSlider> createState() => _QuotesSliderState();
}

class _QuotesSliderState extends State<QuotesSlider> {
  final introKey = GlobalKey<IntroductionScreenState>();

  int index_ = 0;

  Timer? _timer;
  int _start = 5;

  void _onIntroEnd(context) {
    // Navigator.of(context).pushReplacement(
    //   MaterialPageRoute(builder: (_) => const HomePage()),
    // );
    // Navigator.pushNamed(context, DiagnosisPage.id);
  }

  List quotes = [
    "Believe in your resilience. You have overcome challenges before, and you will overcome them again.",
    "Also note that healing is a journey and progress comes in small steps. Be patient with yourself.",
    "Self-compassion is vital. Treat yourself with kindness and understanding."
  ];

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            _start = 5;

            if(index_ < quotes.length - 1){
              index_++;
            } else {
              index_ = 0;
            }

          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      startTimer();
    });
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final userBloc = Provider.of<UserBloc>(context);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    const bodyStyle = TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: BrandColors.white
    );

    // return Container(
    //   padding: EdgeInsets.all(20),
    //   child: Row(
    //     children: [
    //   Flexible(
    //     child: Text(
    //     "Dear Charity, believe in your resilience. You have overcome challenges before, and you will overcome them again. ",
    //     style: TextStyle(
    //       fontSize: 30,
    //       fontWeight: FontWeight.w400,
    //       color: BrandColors.white
    //     )
    // ),
    //   )
    // ],
    // ) ,
    // );
    return Container(
      // height: height,
      // width: width,
      // color: Colors.blue,
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric( horizontal: 30),
          child: Text(
            "${quotes[index_]}",
            textAlign: TextAlign.center,
            style: bodyStyle,
          ),
        )
      ),
    );
  }
}
