part of 'question_answer_bloc.dart';

@immutable
abstract class QuestionAnswerEvent {}

class GetAnswerEvent extends QuestionAnswerEvent {
  final String question;

  GetAnswerEvent({required this.question});
}
