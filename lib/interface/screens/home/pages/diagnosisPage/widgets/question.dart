import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class Question extends StatefulWidget {
  final String? question;
  final List? options;
  final bool? improveOnThis;
  final bool? reset;

  const Question({
    Key? key,
    this.question,
    this.options,
    this.improveOnThis,
    this.reset
  }) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  bool option1 = false;
  bool option2 = false;
  bool option3 = false;
  bool option4 = false;
  bool option5 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.reset == true ?
      setState(() {
         option1 = false;
         option2 = false;
         option3 = false;
         option4 = false;
         option5 = false;
      }) : '';
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 30),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Center(
              child: Text(
                widget.question ?? "Are you having repeated disturbing memories, thoughts or images of the stressful experience?",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 26,
                  color: Colors.black,
                  height: 1.2
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 30,),
          OptionButton(
            onPressed: (){
              setState(() {
                option1 = true;
                option2 = false;
                option3 = false;
                option4 = false;
                option5 = false;
              });
            },
            // text: "Not at all",
            width: width * 0.8,
            height: 50,
            buttonColor: option1 == true ? BrandColors.primaryColor : BrandColors.white,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    "Not at all",
                    style: TextStyle(
                      color: option1 == true ? BrandColors.white : BrandColors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0,
                    )
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          OptionButton(
            onPressed: (){
              setState(() {
                option1 = false;
                option2 = true;
                option3 = false;
                option4 = false;
                option5 = false;
              });
            },
            // text: "Not at all",
            width: width * 0.8,
            height: 50,
            buttonColor: option2 == true ? BrandColors.primaryColor : BrandColors.white,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    "A little bit",
                    style: TextStyle(
                      color: option2 == true ? BrandColors.white : BrandColors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0,
                    )
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          OptionButton(
            onPressed: (){
              setState(() {
                option1 = false;
                option2 = false;
                option3 = true;
                option4 = false;
                option5 = false;
              });
            },
            // text: "Not at all",
            width: width * 0.8,
            height: 50,
            buttonColor: option3 == true ? BrandColors.primaryColor : BrandColors.white,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    "Quite a bit",
                    style: TextStyle(
                      color: option3 == true ? BrandColors.white : BrandColors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0,
                    )
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          OptionButton(
            onPressed: (){
              setState(() {
                option1 = false;
                option2 = false;
                option3 = false;
                option4 = true;
                option5 = false;
              });
            },
            // text: "Not at all",
            width: width * 0.8,
            height: 50,
            buttonColor: option4 == true ? BrandColors.primaryColor : BrandColors.white,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    "Moderately",
                    style: TextStyle(
                      color: option4 == true ? BrandColors.white : BrandColors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0,
                    )
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          OptionButton(
            onPressed: (){
              setState(() {
                option1 = false;
                option2 = false;
                option3 = false;
                option4 = false;
                option5 = true;
              });
            },
            // text: "Not at all",
            width: width * 0.8,
            height: 50,
            buttonColor: option5 == true ? BrandColors.primaryColor : BrandColors.white,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    "Extremely",
                    style: TextStyle(
                      color: option5 == true ? BrandColors.white : BrandColors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 22.0,
                    )
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 22),
            child: Text(
              "I want to improve on this",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Colors.black,
                  height: 1.2
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
