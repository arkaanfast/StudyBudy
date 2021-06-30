class QuestionAnswerModel {
  final String question;
  final String answer;

  QuestionAnswerModel({required this.question, required this.answer});

  factory QuestionAnswerModel.fromJson(Map<String, dynamic> json) =>
      QuestionAnswerModel(question: json['question'], answer: json['answer']);
}
