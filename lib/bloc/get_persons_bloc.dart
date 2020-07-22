import 'package:flutter/cupertino.dart';
import 'package:my_flix/model/genre_response.dart';
import 'package:my_flix/model/person_response.dart';
import 'package:my_flix/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class PersonsListBloc {
  final MovieRepository _repository = MovieRepository();
  // ignore: close_sinks
  final BehaviorSubject<PersonResponse> _subject = BehaviorSubject<PersonResponse>();

  getPersons() async {
    PersonResponse response = await _repository.getPersons();
    _subject.sink.add(response);
  }

  void drainStream() { _subject.value = null;}
  @mustCallSuper
  void dispose() async {
    await _subject.drain();
    _subject.close();
  }

  BehaviorSubject<PersonResponse> get subject => _subject;
}

final personsBloc = PersonsListBloc();