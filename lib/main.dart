import 'package:flutter/material.dart';

import 'models/events.dart';
import 'provider/event_provider.dart';
import 'screen/home_page.dart';

void main() {
  runApp(MyApp());
}

final event = Events(
    title: 'Aprenda Flutter & Dart e Construa APPs iOS e Android',
    description:
        'Construa aplicativos móveis nativos e envolventes para Android e iOS com Flutter,' +
            'Aprenda todas as funcionalidades básicas e avançadas que você não encontrará em nenhum outro curso de Flutter',
    rate: [4, 3, 5, 0]);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
//
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: EventProvider(
          child: HomePage(),
          eventss: event,
        ));
  }
}
