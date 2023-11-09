import 'package:flutter/material.dart';
import 'package:medical_application/index.dart';

class AssessmentBloc with ChangeNotifier {
  AssessmentModel assessmentModel = AssessmentModel();
  List<AssessmentModel> questions = [];

  updateAssessmentModel(Map<String, dynamic> json) {
    assessmentModel = AssessmentModel.fromJson(json);
    notifyListeners();
  }

  // update favorites
  updateAssessments(dynamic json) {
    // first clear the list
    questions.clear();
    // check if the json is a list
    if (json is List) {
      // debugPrint("the list $json");
      for (var element in json.reversed) {
        // debugPrint("element $element");
        questions.add(AssessmentModel.fromJson(element));
      }
    } else {
      // debugPrint("the list in the else statement $json");
      questions.add(AssessmentModel.fromJson(json));
    }
    notifyListeners();
  }
}