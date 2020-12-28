import 'package:flutter/material.dart';

import 'package:understanding_Flutter_BloC/widget/event_card_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inherited Widget'),
        ),
        body: ListView(
          children: [EventCardWidget()],
        ));
  }
}
