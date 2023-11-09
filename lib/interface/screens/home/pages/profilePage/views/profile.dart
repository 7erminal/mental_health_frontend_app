import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  static const String id = Urls.profilepage;

  @override
  Widget build(BuildContext context) {
    final userBloc = Provider.of<UserBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 60),
            child: Column(
              children: [
                ProfilePane(name: userBloc.userModel.fullName),
                SizedBox(height: 10,),
                ProfileTiles(iconPath: Assets.profileIcon, title: "My Profile", content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ProfileInformation(),
                      SizedBox(height: 20,),
                      MedicalInformation(),
                      SizedBox(height: 20,),
                      TreatmentHistory(),
                    ],
                  ),
                ),),
                ProfileTiles(iconPath: Assets.medkitIcon, title: "My Health Records", content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      DiagnosisInformation(),
                      SizedBox(height: 20,),
                      SymptomAssessment(),
                      SizedBox(height: 20,),
                      TreatmentHistory(),
                      SizedBox(height: 20,),
                      RecentAssessment(),
                      SizedBox(height: 20,),
                      TreatmentPlan(),
                    ],
                  ),
                )),
                ProfileTiles(iconPath: Assets.therapistIcon, title: "My Therapists", content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SpecialistTile(onPressed: (){ Navigator.pushNamed(context, TherapistDetails.id); }, iconImageurl: Assets.maleDoctor, textColor: BrandColors.black, specialistName: "Dr. Dorcas Kizuela"),
                      SizedBox(height: 20,),
                      SpecialistTile(onPressed: (){ Navigator.pushNamed(context, TherapistDetails.id); }, iconImageurl: Assets.femaleDoctor, textColor: BrandColors.black, specialistName: "Dr. Frank Percy"),
                    ],
                  ),
                )),
                ProfileTiles(iconPath: Assets.appointmentsIcon, title: "My Appointments", content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SpecialistTile(onPressed: (){ Navigator.pushNamed(context, TherapistDetails.id); }, iconImageurl: Assets.maleDoctor, textColor: BrandColors.black, specialistName: "Dr. Dorcas Kizuela"),
                      SizedBox(height: 20,),
                      SpecialistTile(onPressed: (){ Navigator.pushNamed(context, TherapistDetails.id); }, iconImageurl: Assets.femaleDoctor, textColor: BrandColors.black, specialistName: "Dr. Frank Percy"),
                    ],
                  ),
                ))
              ],
            )
        ),
      ),
    );
  }
}
