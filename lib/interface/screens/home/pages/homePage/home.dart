import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const String id = Urls.home;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showHelpDialog();
    });
  }

  showHelpDialog(){
    double height = MediaQuery.of(context).size.height;

    showDialog(
        context: context,
        builder: (_) => CustomDialogBox(
          linkText: "I will do this later",
          bodyText: "Thank you for for joining HealMe! We're excited to have you on board To make the most of your experience, please take a moment to complete up your profile,",
          buttonText: "Complete Profile",
          buttonTap: (){ Navigator.pushNamed(context, ProfileSetup.id); },
          linkTap: (){ Navigator.pop(context); showReProfileDialog(); },
          dialogHeight: height * 0.45,
          // topPadding: 60,
        )
    );
  }

  showReProfileDialog(){
    double height = MediaQuery.of(context).size.height;

    showDialog(
        context: context,
        builder: (_) => CustomDialogBox(
          linkText: "Let's do this later",
          bodyText: "Why don’t we do this now? Completing your profile helps us tailor the app to your needs and provides a more personalized experience.",
          buttonText: "Complete Profile Setup",
          buttonTap: (){ Navigator.pushNamed(context, ProfileSetup.id); },
          linkTap: (){ Navigator.pop(context); },
            dialogHeight: height * 0.45,
          // topPadding: 60,
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
              color: Colors.white
          ),
          automaticallyImplyLeading: false,
        actions: <Widget>[
          Icon(Icons.notifications_none, size: 28,),
          SizedBox(width: 24,)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              Container(
                  width: width,
                  height: height*0.60,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter, end: Alignment.center,
                        colors: BrandGradients.brandGradient, )
                  ),
                child: Column(
                  children: [
                    Container(
                        child: BrandProfilePane(),
                      padding: EdgeInsets.only(top: 80, left: 22, right: 22),
                      // color: Colors.amber,
                    ),
                    // SizedBox(height: 4,),
                    Expanded(child: QuotesSlider()),
                    // SizedBox(height: 200,)
                  ],
                ),
              ),
              // SizedBox(height: 20,),
              Positioned(
                top: height * 0.55,
                  width: width,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTile(onPressed: (){ Navigator.pushNamed(context, DiagnosisLandingPage.id); }, iconImageurl: Assets.stethoscopeImage, title: "Diagnosis",),
                        SizedBox(height: 15,),
                        CustomTile(onPressed: (){ Navigator.pushNamed(context, ConsultationPage.id); }, iconImageurl: Assets.consultantImage, title: "Consultation",),
                        SizedBox(height: 15,),
                        CustomTile(onPressed: (){ Navigator.pushNamed(context, MindAndMoods.id); }, iconImageurl: Assets.mindImage, title: "Mind & Mood",),
                      ],
                    ),
                  )
              )
              // SizedBox(height: 20,),
              // ProfilePane(),
              // SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
