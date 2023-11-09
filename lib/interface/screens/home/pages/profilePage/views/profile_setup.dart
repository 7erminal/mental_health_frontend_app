import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({Key? key}) : super(key: key);

  static const String id = Urls.profileSetup;

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        title: Text(
            "Profile Setup",
          style: TextStyle(
            color: BrandColors.white
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                width: width,
                height: height * 0.90,
                alignment: Alignment.bottomCenter,
                color: Color(0xfff3eff9),
                // color: Colors.amber,
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.16, left: 16, right: 16),
                            child: Container(
                              padding: EdgeInsets.all(15),
                                width: width * 0.95,
                                height: height,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    color: BrandColors.white,
                                    borderRadius: BorderRadius.circular(BrandSizes.radius_10)
                                ),
                                child: PersonalForm()
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: width,
              height: height * 0.25,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Container(
                            width: width,
                            height: constraints.maxHeight * 0.60,
                            color: BrandColors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 50,
                                  child: Row(
                                    children: [
                                      Spacer(),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        // crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'Personal'
                                            ),
                                          ),
                                          SizedBox(height: 1,),
                                          LinearPercentIndicator(
                                            width: (width * 0.60) * 0.40,
                                            // animation: isRunning,
                                            lineHeight: 2.0,
                                            animationDuration: 3000,
                                            percent: 0.2,
                                            animateFromLastPercent: true,
                                            center: Text(""),
                                            progressColor: BrandColors.primaryColor,
                                            backgroundColor: BrandColors.primaryColorLight,
                                            // widgetIndicator: RotatedBox(
                                            //     quarterTurns: 1,
                                            //     child: Icon(Icons.airplanemode_active, size: 50)),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            child: Text(
                                                'Family'
                                            ),
                                          ),
                                          SizedBox(height: 1,),
                                          LinearPercentIndicator(
                                            width: (width * 0.60) * 0.20,
                                            // animation: isRunning,
                                            lineHeight: 2.0,
                                            animationDuration: 3000,
                                            percent: 0.0,
                                            animateFromLastPercent: true,
                                            center: Text(""),
                                            // progressColor: Colors.red,
                                            // widgetIndicator: RotatedBox(
                                            //     quarterTurns: 1,
                                            //     child: Icon(Icons.airplanemode_active, size: 50)),
                                          ),
                                        ],
                                      ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          child: Text(
                                              'Health History'
                                          ),
                                        ),
                                        SizedBox(height: 1,),
                                        LinearPercentIndicator(
                                          width: (width * 0.60) * 0.30,
                                          // animation: isRunning,
                                          lineHeight: 2.0,
                                          animationDuration: 3000,
                                          percent: 0.0,
                                          animateFromLastPercent: true,
                                          center: Text(""),
                                          // progressColor: Colors.red,
                                          // widgetIndicator: RotatedBox(
                                          //     quarterTurns: 1,
                                          //     child: Icon(Icons.airplanemode_active, size: 50)),
                                        ),
                                      ],
                                    ),
                                      Spacer()
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8,)
                              ],
                            ),
                          );
                        }
                    ),
                  ),
                  LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return Container(
                        width: width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(7), bottomRight: Radius.circular(7)),
                            color: BrandColors.secondaryColor
                        ),
                        height: constraints.maxHeight * 0.60,
                      );
                    }
                  ),
                ],
              ),
            ),
            Positioned(
              top: height * 0.10,
              child: Container(
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfileImage(
                      size: 80,
                    ),
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
