import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class ConsultationPage extends StatefulWidget {
  const ConsultationPage({Key? key}) : super(key: key);

  static const String id = Urls.consultationMainPage;

  @override
  State<ConsultationPage> createState() => _ConsultationPageState();
}

class _ConsultationPageState extends State<ConsultationPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        // padding: EdgeInsets.symmetric(vertical: 60),
        width: width,
        height: height,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
              child: Text(
                "Hello Charity, \nReady to speak with a therapist? Find a therapist and book an appointment with them now",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 52,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20), child: SearchBox()),
            SizedBox(height: 22,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: width * 0.30,
                      maxWidth: width * 0.50,
                    ),
                    child: Container(
                      // width: width * 0.30,
                      child: CustomButton(
                        buttonColor: BrandColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            BrandSizes.radius_10,
                          ),
                        ),
                        width: width * 0.9,
                        elevation: 2.0,
                        onPressed: () {
                          Navigator.pushNamed(context, HomePage.id);
                        },
                        // buttonColor: BrandColors.primaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                                "Call History",
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
                  )
                ],
              ),
            ),
            SizedBox(height: 22,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Available Therapists",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            SizedBox(height: 32,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SpecialistTile(onPressed: (){ Navigator.pushNamed(context, TherapistDetails.id); }, iconImageurl: Assets.maleDoctor, textColor: BrandColors.black, specialistName: "Dr. Dorcas Kizuela"),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SpecialistTile(onPressed: (){ Navigator.pushNamed(context, TherapistDetails.id); }, iconImageurl: Assets.femaleDoctor, textColor: BrandColors.black, specialistName: "Dr. Frank Percy"),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SpecialistTile(onPressed: (){ Navigator.pushNamed(context, TherapistDetails.id); }, iconImageurl: Assets.maleDoctor, textColor: BrandColors.black, specialistName: "Dr. Carlyn Goodway"),
            ),
            // ProfileImage(photoString: Assets.maleDoctor ?? Assets.femaleDoctor, size: 180,)

          ],
        ),
      ),
    );
  }
}
