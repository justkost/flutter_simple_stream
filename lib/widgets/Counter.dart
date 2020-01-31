import 'package:flutter/material.dart';
import 'package:flutter_app/service_locator.dart';
import 'package:flutter_app/services/CounterMessagebus.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  CounterMessagebus _messageBus = locator<CounterMessagebus>();

  int _current;

  @override
  void initState() {
    _messageBus.idStream.listen(handleMessage);
  }

  void handleMessage(int current) {
    setState(() {
      _current = current;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (
      Text(
        _current.toString(),
        style: Theme.of(context).textTheme.display1,
      )
    );
  }
}
