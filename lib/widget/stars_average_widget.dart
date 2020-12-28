import 'package:flutter/material.dart';

class StarsAverageWidget extends StatelessWidget {
  final List<int> rate;
  StarsAverageWidget(this.rate);

  @override
  Widget build(BuildContext context) {
    int avg = (_sumRate() / rate.length).floor();
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

  int _sumRate() {
    int sum = 0;
    for (var r in rate) {
      sum += r;
    }
    return sum;
  }
}
