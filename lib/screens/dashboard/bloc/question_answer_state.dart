part of 'question_answer_bloc.dart';

@immutable
abstract class QuestionAnswerState {}

class QuestionAnswerInitial extends QuestionAnswerState {}

class LoadingState extends QuestionAnswerState {}

class LoadedState extends QuestionAnswerState {
  final QuestionAnswerModel questionAnswerModel;

  LoadedState({required this.questionAnswerModel});
}
