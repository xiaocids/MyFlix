import 'package:flutter/cupertino.dart';
import 'package:my_flix/model/cast_response.dart';
import 'package:my_flix/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class CastsBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<CastsResponse> _subject =
      BehaviorSubject<CastsResponse>();

  getCasts(int id) async {
    CastsResponse response = await _repository.getCasts(id);
    _subject.sink.add(response);
  }

  void drainStream() {
    _subject.value = null;
  }

  @mustCallSuper
  void dispose() async {
    await _subject.drain();
    _subject.close();
  }

  BehaviorSubject<CastsResponse> get subject => _subject;
}

final castBloc = CastsBloc();
