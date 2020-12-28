import 'package:flutter/material.dart';
import 'package:understanding_Flutter_BloC/models/events.dart';
import 'package:understanding_Flutter_BloC/widget/event_card_widget.dart';

class HomePage extends StatelessWidget {
  final Events event;

  const HomePage(this.event);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inherited Widget'),
        ),
        body: ListView(
          children: [EventCardWidget(event)],
        ));
  }
}
