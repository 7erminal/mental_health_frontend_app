import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';
import 'package:provider/provider.dart';

class DiagnosisPage extends StatelessWidget {
  DiagnosisPage({Key? key}) : super(key: key);

  static const String id = Urls.diagnosispage;

  var questions = [
    {
      "Question": "Are you having repeated disturbing memories, thoughts or images of the stressful experience?",
      "Question_id": "1",
      "Options": [
        "Not at all", "A little bit", "Quite a bit", "Moderately", "Extremely"
      ]
    },
    {
      "Question": "Are you having repeated disturbing dreams of the stressful experience?",
      "Question_id": "2",
      "Options": [
        "Not at all", "A little bit", "Quite a bit", "Moderately", "Extremely"
      ]
    },
    {
      "Question": "Suddenly acting or feeling as if the stressful experience were happening again?",
      "Question_id": "2",
      "Options": [
        "Not at all", "A little bit", "Quite a bit", "Moderately", "Extremely"
      ]
    },
    {
      "Question": "Feeling upset when something reminds you of hte stressful experience?",
      "Question_id": "3",
      "Options": [
        "Not at all", "A little bit", "Quite a bit", "Moderately", "Extremely"
      ]
    },
    {
      "Question": "Having physical reaction (eg Heart pounding, trouble in breathing or sweating when something reminds you of the stressful experience?",
      "Question_id": "4",
      "Options": [
        "Not at all", "A little bit", "Quite a bit", "Moderately", "Extremely"
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final assessmentBloc = Provider.of<AssessmentBloc>(context);


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 44),
        child: ListView(
          children: [
            AssessmentSlab(title: "Self Care Assessment", slabColor: BrandColors.slabColorLightGreen, onSlapTap: (){

              assessmentBloc.updateAssessments(questions);
              Navigator.pushNamed(context, AssessmentModule1.id);
              },),
            SizedBox(height: 20,),
            AssessmentSlab(title: "PTSD Assessment", slabColor: BrandColors.slabColorLightOrange, onSlapTap: (){
              assessmentBloc.updateAssessments(questions);
              Navigator.pushNamed(context, AssessmentModule1.id);
            }),
            SizedBox(height: 20,),
            AssessmentSlab(title: "Back Depression Inventory", slabColor: BrandColors.slabColorLightPurple, onSlapTap: (){
              assessmentBloc.updateAssessments(questions);
              Navigator.pushNamed(context, AssessmentModule1.id);
            }),
            SizedBox(height: 20,),
            AssessmentSlab(title: "Beck Anxiety Inventory", slabColor: BrandColors.slabColorLightGreen2, onSlapTap: (){
              assessmentBloc.updateAssessments(questions);
              Navigator.pushNamed(context, AssessmentModule1.id);
            }),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
