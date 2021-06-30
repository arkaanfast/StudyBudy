import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:studybudy/models/question_answer_model.dart';
import 'package:studybudy/services/question_answer_services.dart';

part 'question_answer_event.dart';
part 'question_answer_state.dart';

class QuestionAnswerBloc
    extends Bloc<QuestionAnswerEvent, QuestionAnswerState> {
  QuestionAnswerBloc() : super(QuestionAnswerInitial());

  @override
  Stream<QuestionAnswerState> mapEventToState(
    QuestionAnswerEvent event,
  ) async* {
    if (event is GetAnswerEvent) {
      yield LoadingState();
      final data =
          await QuestionAnswerServices().getAnswer(question: event.question);
      yield LoadedState(questionAnswerModel: data);
    }
  }
}
