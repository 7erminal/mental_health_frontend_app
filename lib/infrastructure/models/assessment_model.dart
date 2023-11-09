class AssessmentModel{
  String? question;
  String? questionid;
  List<dynamic>? options;

  // constructor
  AssessmentModel({
    this.question,
    this.questionid,
    this.options
  });

  // from json
  factory AssessmentModel.fromJson(Map<String, dynamic> json) => AssessmentModel(
    question: json["Question"].toString(),
    questionid: json["Question_id"].toString(),
    options: json['Options'],
  );
}