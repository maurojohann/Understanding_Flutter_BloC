import 'package:flutter/material.dart';
import 'package:understanding_Flutter_BloC/widget/stars_average_widget.dart';

import '../models/events.dart';

class EventCardWidget extends StatelessWidget {
  final Events event;

  const EventCardWidget(this.event);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event.title,
              style: Theme.of(context).textTheme.headline5,
            ),
            Divider(),
            Text(
              '${event.description}',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 10.0),
            StarsAverageWidget(event.rate),
            SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                  child: RaisedButton(
                    elevation: 10.0,
                    child: Text('Detalhes'),
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
