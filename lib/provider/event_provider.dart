import 'package:flutter/cupertino.dart';
import 'package:understanding_Flutter_BloC/models/events.dart';

class EventProvider extends InheritedWidget {
  final Events eventss;

  EventProvider({@required Widget child, @required this.eventss})
      : assert(child != null),
        assert(eventss != null),
        super(child: child);
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static EventProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<EventProvider>();
}
