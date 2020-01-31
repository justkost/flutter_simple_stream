import 'package:rxdart/rxdart.dart';

class CounterMessagebus{
  final _subject = BehaviorSubject<int>.seeded(0);

  Stream<int> get idStream => _subject.stream;

  void broadcastCount(int count) {
    _subject.add(count);
  }
}