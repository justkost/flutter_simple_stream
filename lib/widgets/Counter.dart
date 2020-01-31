import 'package:flutter/material.dart';
import 'package:flutter_app/service_locator.dart';
import 'package:flutter_app/services/CounterMessagebus.dart';

class Counter extends StatelessWidget {
  final CounterMessagebus _messageBus = locator<CounterMessagebus>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: _messageBus.idStream,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        return (
          Text(
            snapshot.data.toString(),
            style: Theme.of(context).textTheme.display1,
          )
        );
      }
    );
  }
}
