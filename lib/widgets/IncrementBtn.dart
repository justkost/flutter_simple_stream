import 'package:flutter/material.dart';
import 'package:flutter_app/service_locator.dart';
import 'package:flutter_app/services/CounterMessagebus.dart';

class IncrementBtn extends StatefulWidget {
  @override
  _IncrementBtnState createState() => _IncrementBtnState();
}

class _IncrementBtnState extends State<IncrementBtn> {
  CounterMessagebus _messageBus = locator<CounterMessagebus>();

  int _current = 0;

  void _incrementCounter() {
    ++_current;
    _messageBus.broadcastCount(_current);
  }

  @override
  Widget build(BuildContext context) {
    return (
      FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      )
    );
  }
}
