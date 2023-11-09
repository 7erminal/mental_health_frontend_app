import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class MindAndMoods extends StatefulWidget {
  const MindAndMoods({Key? key}) : super(key: key);

  static const String id = Urls.mindAndMoods;

  @override
  State<MindAndMoods> createState() => _MindAndMoodsState();
}

class _MindAndMoodsState extends State<MindAndMoods> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  // alignment: Alignment.bottomCenter,
                  height: height * 0.70,
                  width: width,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Spacer(),
                              CustomPill(curve: 5, title: "Meditation",),
                              SizedBox(width: 5,),
                              CustomPill(curve: 5, title: "Mood Tracker",),
                              SizedBox(width: 5,),
                              CustomPill(curve: 5, title: "Stress Relief",),
                              Spacer()
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text(
                                "Meditations",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 23
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          MoodSlabs(cat: "Popular"),
                          SizedBox(height: 5,),
                          MoodSlabs(cat: "New")
                        ],
                      ),
                    ),
                  ),
                ),
            ),
            Container(
              width: width,
              height: height * 0.40,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter, end: Alignment.bottomRight,
                    colors: BrandGradients.brandGradient, ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(9), bottomRight: Radius.circular(9)),
                  color: Colors.white
              ),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
                        Container(
                          child: Text(
                            "Love and\nAccept yourself",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                              fontWeight: FontWeight.w300
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 30,),
                        Image.asset(
                          Assets.illustrationGirl,
                          // width: 420,
                          // height: 420,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 30,
                    child: Image.asset(
                      Assets.illustrationNature,
                      // width: 420,
                      // height: 420,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 30,
                    child: Image.asset(
                      Assets.illustrationNature1,
                      // width: 420,
                      // height: 420,
                    ),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
