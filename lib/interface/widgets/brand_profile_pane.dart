import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class BrandProfilePane extends StatelessWidget {
  const BrandProfilePane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, Profile.id);
      },
      child: Material(
        elevation: 2,
        shadowColor: BrandColors.grey550,
        borderRadius: BorderRadius.circular(5),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 90,
          child: Row(
            children: <Widget>[
              ProfileImage(),
              Spacer(),
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: <Widget>[
                    Container(width: width*0.17,child: ReadingsCard()),
                    SizedBox(width: 6,),
                    Container(width: width*0.17, child: ReadingsCard(graphUrl: Assets.vector52,)),
                    SizedBox(width: 6,),
                    Container(width: width*0.17, child: ReadingsCard(graphUrl: Assets.vector53,)),
                    SizedBox(width: 10,),
                    // HealthScore(),
                    // SizedBox(width: 6,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
