import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class TherapistDetails extends StatefulWidget {
  const TherapistDetails({Key? key}) : super(key: key);

  static const String id = Urls.consultationTherapistPage;

  @override
  State<TherapistDetails> createState() => _TherapistDetailsState();
}

class _TherapistDetailsState extends State<TherapistDetails> {

  void showModal(context) async{
    double height = MediaQuery.of(context).size.height;

    showModalBottomSheet(
        isScrollControlled: true,
        isDismissible: false,
        barrierColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: height * 0.60,
          );
        }
    );
  }

  showHelpDialog(context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    showDialog(
        context: context,
        builder: (_) => CustomDialogBox(
          dialogHeight: height * 0.45,
          topPadding: 40,
          bodyText: "Kindly confirm your\nappointment.",
          subBodyText: "Date: 12-07-2023\nTime: 8:30am - 10:30am\nVenue: Online",
          // dialogCurve: 10,
          linkText: "Edit Appointment",
          bodyTextFontSize: 22,
          subBodyTextFontSize: 21,
          buttonText: "Confirm",
          // bodyTextAlign: TextAlign.start,
          linkTap: (){Navigator.pop(context);},
          wide: true,
            bodyTextHeight: 1.3,
          buttonColor: BrandColors.primaryColor,


          // bodyTextColor: BrandColors.black,
        )
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // showModal(context);
    });
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
      ),
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              width: width,
              height: height * 0.50,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter, end: Alignment.center,
                      colors: BrandGradients.brandGradientSecondary, )
                ),
              child: Center(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      Assets.femaleDoctorFull
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                // alignment: Alignment.bottomCenter,
                height: height * 0.60,
                width: width,
                // color: Colors.amber,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(7), topRight: Radius.circular(7)),
                  color: Colors.white
                ),
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 32, right: 32, bottom: 0),
                      child: Row(
                        children: [
                          Text(
                            "Dr. Dorcas Amankyim",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 24
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.phone_outlined,
                            color: BrandColors.primaryColor,
                            size: 30,
                          ),
                          SizedBox(width: 10,),
                          Icon(
                            Icons.messenger_outline_rounded,
                            color: BrandColors.primaryColor,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 1),
                      child: Row(
                        children: [
                          Text(
                            "Mental Health Therapist",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 4, left: 32, right: 32, bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.star, color: Color(0xffFFB600),),
                          SizedBox(width: 2,),
                          Icon(Icons.star, color: Color(0xffFFB600),),
                          SizedBox(width: 2,),
                          Icon(Icons.star, color: Color(0xffFFB600),),
                          SizedBox(width: 2,),
                          Icon(Icons.star, color: Color(0xffFFB600),),
                          SizedBox(width: 2,),
                          Icon(Icons.star, color: Color(0xffFFB600),),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(top: 2, left: 32, right: 32, bottom: 2),
                      child: Row(
                        children: [
                          Text(
                            "About",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 21
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4, left: 32, right: 32, bottom: 4),
                      child: Row(
                        children: [
                          Flexible(
                              child: Text(
                                "Dr. Dorcas is a licensed mental therapist with a passion for helping individuals navigate life's challenges and discover their inner strength. With over a decade of experience in the field, I have dedicated my career to empowering individuals to live healthier, happier lives.",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.only(top: 4, left: 32, right: 32, bottom: 4),
                      child: Text(
                        "Available Hours",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Divider(color: Colors.grey,),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        children: [
                          AppointmentPill(),
                          SizedBox(width: 5,),
                          Spacer(),
                          SizedBox(width: 5,),
                          AppointmentPill()
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        children: [
                          AppointmentPill(),
                          SizedBox(width: 5,),
                          Spacer(),
                          SizedBox(width: 5,),
                          AppointmentPill()
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: CustomButton(
                        width: width * 0.9,
                        elevation: 2.0,
                        buttonColor: BrandColors.primaryColor,
                        onPressed: () {
                          showHelpDialog(context);
                        },
                        // buttonColor: BrandColors.primaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                                "Book Appointment",
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
                    SizedBox(height: 20,),
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
