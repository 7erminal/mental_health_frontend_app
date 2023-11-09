import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class GenderSelect extends StatefulWidget {
  final VoidCallback linkTap;
  final void Function(String) setGender;


  const GenderSelect({
    Key? key,
    required this.linkTap,
    required this.setGender
  }) : super(key: key);

  @override
  State<GenderSelect> createState() => _GenderSelectState();
}

class _GenderSelectState extends State<GenderSelect> {
  Color maleButtonColor = Colors.white;

  Color femaleButtonColor = Colors.white;

  Color otherButtonColor = Colors.white;

  bool maleButton = false;

  bool femaleButton = false;

  bool otherButton = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Dialog(
      backgroundColor: BrandColors.white,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(padding: EdgeInsets.only(top: 80, left: 40, right: 40, bottom: 0)),
          Container(
            child: Center(
              child: Text(
                'Please select your sex',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Spacer(),
              Container(
                width: width*0.23,
                child: SelectButton(narration: "Male", textColor: maleButton == false ? Colors.black : Colors.white,
                  buttonTap: (){
                    maleButton == false ?
                    setState(() {
                      maleButton = true;
                      maleButtonColor = BrandColors.secondaryColor;

                      // Set the gender
                      widget.setGender!("Male");

                      femaleButton = false;
                      otherButton = false;
                      femaleButtonColor = Colors.white;
                      otherButtonColor = Colors.white;
                    }) :
                    setState(() {
                      maleButton = false;
                      maleButtonColor = Colors.white;
                    });
                  },
                  buttonColor: maleButtonColor,
                ),
              ),
              SizedBox(width: 2,),
              Container(
                // width: width*0.23,
                child: SelectButton(narration: "Female", textColor: femaleButton == false ? Colors.black : Colors.white,
                  buttonTap: (){
                    femaleButton == false ?
                    setState(() {
                      femaleButton = true;
                      femaleButtonColor = BrandColors.secondaryColor;

                      // Set the gender
                      widget.setGender!("Female");

                      maleButton = false;
                      otherButton = false;
                      maleButtonColor = Colors.white;
                      otherButtonColor = Colors.white;
                    }) :
                    setState(() {
                      femaleButton = false;
                      femaleButtonColor = Colors.white;
                    });
                  },
                  buttonColor: femaleButtonColor,
                ),
              ),
              SizedBox(width: 2,),
              Container(
                width: width*0.23,
                child: SelectButton(narration: "Other", textColor: otherButton == false ? Colors.black : Colors.white,
                  buttonTap: (){
                    otherButton == false ?
                    setState(() {
                      otherButton = true;
                      otherButtonColor = BrandColors.secondaryColor;

                      // Set the gender
                      widget.setGender!("Other");

                      femaleButton = false;
                      maleButton = false;
                      femaleButtonColor = Colors.white;
                      maleButtonColor = Colors.white;
                    }) :
                    setState(() {
                      otherButton = false;
                      otherButtonColor = Colors.white;
                    });
                  },
                  buttonColor: otherButtonColor,
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 50,),
          InkWell(
            onTap: widget.linkTap,
            child: Text(
              "Done",
              style: TextStyle(
                  fontSize: 22,
                  color: BrandColors.primaryColor
              ),
            ),
          ),
          Container(padding: EdgeInsets.only(top: 80, left: 70, right: 70, bottom: 0))
        ],
      ),
    );
  }
}
