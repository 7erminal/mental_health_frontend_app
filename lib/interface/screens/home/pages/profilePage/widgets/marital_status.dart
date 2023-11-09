import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class MaritalStatus extends StatefulWidget {
  final VoidCallback linkTap;
  final void Function(String) setMaritalStatus;


  const MaritalStatus({
    Key? key,
    required this.linkTap,
    required this.setMaritalStatus
  }) : super(key: key);

  @override
  State<MaritalStatus> createState() => _MaritalStatusState();
}

class _MaritalStatusState extends State<MaritalStatus> {
  Color singleButtonColor = Colors.white;

  Color marriedButtonColor = Colors.white;

  Color otherButtonColor = Colors.white;

  bool singleButton = false;

  bool marriedButton = false;

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
                'Select marital status',
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
                child: SelectButton(narration: "Single", textColor: singleButton == false ? Colors.black : Colors.white,
                  buttonTap: (){
                    singleButton == false ?
                    setState(() {
                      singleButton = true;
                      singleButtonColor = BrandColors.secondaryColor;

                      // Set the gender
                      widget.setMaritalStatus!("Single");

                      marriedButton = false;
                      otherButton = false;
                      marriedButtonColor = Colors.white;
                      otherButtonColor = Colors.white;
                    }) :
                    setState(() {
                      singleButton = false;
                      singleButtonColor = Colors.white;
                    });
                  },
                  buttonColor: singleButtonColor,
                ),
              ),
              SizedBox(width: 2,),
              Container(
                // width: width*0.23,
                child: SelectButton(narration: "Married", textColor: marriedButton == false ? Colors.black : Colors.white,
                  buttonTap: (){
                    marriedButton == false ?
                    setState(() {
                      marriedButton = true;
                      marriedButtonColor = BrandColors.secondaryColor;

                      // Set the gender
                      widget.setMaritalStatus!("Married");

                      singleButton = false;
                      otherButton = false;
                      singleButtonColor = Colors.white;
                      otherButtonColor = Colors.white;
                    }) :
                    setState(() {
                      marriedButton = false;
                      marriedButtonColor = Colors.white;
                    });
                  },
                  buttonColor: marriedButtonColor,
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
                      widget.setMaritalStatus!("Other");

                      marriedButton = false;
                      singleButton = false;
                      marriedButtonColor = Colors.white;
                      singleButtonColor = Colors.white;
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
