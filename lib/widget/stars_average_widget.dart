import 'package:flutter/material.dart';

import 'package:understanding_Flutter_BloC/provider/event_provider.dart';

class StarsAverageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<int> rate = EventProvider.of(context).eventss.rate;

    int avg = (_sumRate(rate) / rate.length).floor();
    List<bool> stars = [false, false, false, false, false];

    for (int i = 0; i < avg; i++) {
      stars[i] = true;
    }

    return Row(
      children: [
        Icon(stars[0] ? Icons.star : Icons.star_border),
        Icon(stars[1] ? Icons.star : Icons.star_border),
        Icon(stars[2] ? Icons.star : Icons.star_border),
        Icon(stars[3] ? Icons.star : Icons.star_border),
        Icon(stars[4] ? Icons.star : Icons.star_border),
      ],
    );
  }

  int _sumRate(List<int> rate) {
    int sum = 0;
    for (var r in rate) {
      sum += r;
    }
    return sum;
  }
}
