import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class ProfilePane extends StatelessWidget {
  final String? name;
  const ProfilePane({
    Key? key,
    this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        children: [
          Material(
            // elevation: 1,
            // shadowColor: BrandColors.grey550,
            // borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: BrandColors.grey100,
                    blurRadius: 8.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                    offset: Offset(
                      5.0, // Move to right 5  horizontally
                      5.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: 90,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ProfileImage(),
                  SizedBox(width: 40,),
                  Expanded(
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Container(
                          height: constraints.maxHeight,
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                    "${name}",
                                  // overflow: TextOverflow.fade,
                                  // softWrap: false,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 23
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }
                    ),
                  ),
                  // Spacer()
                ],
              ),
            ),
          ),
          Material(
            // elevation: 2,
            // shadowColor: BrandColors.grey550,
            // borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: BrandColors.grey100,
                    blurRadius: 8.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                    offset: Offset(
                      5.0, // Move to right 5  horizontally
                      5.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: 90,
              child: Row(
                children: <Widget>[
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: <Widget>[
                        Container(width: width*0.18, child: ReadingsCard()),
                        SizedBox(width: 6,),
                        Container(width: width*0.18, child: ReadingsCard(graphUrl: Assets.vector52,)),
                        SizedBox(width: 6,),
                        Container(width: width*0.18, child: ReadingsCard(graphUrl: Assets.vector53,)),
                      ],
                    ),
                  ),
                  Spacer()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
