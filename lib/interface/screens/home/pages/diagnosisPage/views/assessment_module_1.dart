import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';
import 'package:provider/provider.dart';

class AssessmentModule1 extends StatefulWidget {
  const AssessmentModule1({Key? key}) : super(key: key);

  static const String id = Urls.assessmentModule1;

  @override
  State<AssessmentModule1> createState() => _AssessmentModule1State();
}

class _AssessmentModule1State extends State<AssessmentModule1> {

  int index_ = 0;

  showHelpDialog(context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    showDialog(
        context: context,
        builder: (_) => CustomDialogBox(
          dialogHeight: height * 0.73,
          title: "Assessment Guide",
          bodyText: "Self Care activities are the things you do to maintain good health and improve well-being. You will find that many of these activities are things you already do on a normal routine. \nIn this assessment, you wil think about how frequently, or how well you are perfoming different self care activities. The goal of the assessment is to help you learn about your self-care needs by spotting  patterns and recognizing areas of your life that needs more attention. \nThere are no right or wrong answers on this assessment. There may be activities that you have no interest in, and other activities may not be included. This list is not comprehensive but serves as your starting point to think about your self-care needs.",
          dialogCurve: 10,
          linkText: "Back to Assessment",
          bodyTextAlign: TextAlign.start,
          linkTap: (){Navigator.pop(context);},
          wide: true,
          bodyTextColor: BrandColors.black,
        )
    );
  }

  showCompletionDialog(){
    double height = MediaQuery.of(context).size.height;

    showDialog(
        context: context,
        builder: (_) => CustomDialogBox(
          title: "Great!",
          linkText: "Back to Home",
          bodyText: "Your responses have been submitted successfully. We will assess and get in touch with you.",
          buttonText: "Take another assessment",
          buttonTap: (){ Navigator.pop(context); Navigator.pop(context); },
          linkTap: (){ Navigator.pop(context); Navigator.pop(context); Navigator.pop(context); Navigator.pop(context);},
          dialogHeight: height * 0.50,
          // topPadding: 100,
          // topPadding: 0,
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final assessmentBloc = Provider.of<AssessmentBloc>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
      ),
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(top: 35),
                width: width,
                height: height * 0.90,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                    child: ListView(
                      children: [
                        Question(question: assessmentBloc.questions[index_].question, options: assessmentBloc.questions[index_].options, reset: true,),
                        index_ > 0 ?
                            Row(
                              children: [
                                Spacer(),
                                CustomButton(
                                  width: width * 0.4,
                                  elevation: 2.0,
                                  height: 30,
                                  buttonColor: BrandColors.primaryColor,
                                  onPressed: () {
                                    setState(() {
                                      if(index_ != 0) {
                                        index_ = index_ - 1;
                                      }
                                    });
                                    // Navigator.pushNamed(context, HomePage.id);
                                  },
                                  // buttonColor: BrandColors.primaryColor,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                          "Prev Question",
                                          style: TextStyle(
                                            color: BrandColors.colorWhiteAccent,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 22.0,
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10,),
                                CustomButton(
                                  width: width * 0.4,
                                  elevation: 2.0,
                                  height: 30,
                                  buttonColor: BrandColors.primaryColor,
                                  onPressed: () {
                                    setState(() {
                                      if(index_ != assessmentBloc.questions.length - 1) {
                                        index_ = index_ + 1;
                                      } else {
                                        showCompletionDialog();
                                      }

                                      debugPrint("index is $index_ whic question lenght is ${assessmentBloc.questions.length}");
                                    });
                                    // Navigator.pushNamed(context, HomePage.id);
                                  },
                                  // buttonColor: BrandColors.primaryColor,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                          index_ == assessmentBloc.questions.length - 1 ? "Submit" : "Next Question",
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
                            )
                            :
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22.0),
                          child: CustomButton(
                            width: width * 0.8,
                            elevation: 2.0,
                            height: 30,
                            buttonColor: BrandColors.primaryColor,
                            onPressed: () {
                              setState(() {
                                if(index_ != assessmentBloc.questions.length - 1) {
                                  index_ = index_ + 1;
                                }
                              });
                              // Navigator.pushNamed(context, HomePage.id);
                            },
                            // buttonColor: BrandColors.primaryColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                    "Next Question",
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
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          // child: QuestionTracker(),
                        ),
                        SizedBox(height: 10,)
                      ],
                    )
                ),
                // child: Center(child: Container(child: Text("How come?", style: TextStyle(color: Colors.black),))),
              ),
            ),
            // Container(child: Center(child: Container(child: Text("How come?", style: TextStyle(color: Colors.black),)))),
            Container(
              width: width,
              height: height * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(7), bottomRight: Radius.circular(7)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter, end: Alignment.center,
                    colors: BrandGradients.brandGradientSecondary, )
              ),
              child: Center(
                child: Column(
                  children: [
                    Spacer(),
                    CustomButton(
                      width: width * 0.8,
                      elevation: 2.0,
                      buttonColor: BrandColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            BrandSizes.radius_10,
                          ),
                        ),
                      onPressed: () {
                        // Navigator.pushNamed(context, HomePage.id);
                        showHelpDialog(context);
                      },
                      // buttonColor: BrandColors.primaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                              "Assessment Guide",
                              style: TextStyle(
                                color: BrandColors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 22.0,
                              )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
