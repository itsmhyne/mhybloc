import 'package:flutter/material.dart';

class CounterEvent {}

class CounterEventIncrement extends CounterEvent {}

class CounterEventDecrement extends CounterEvent {
  CounterEventDecrement(this.context);
  BuildContext context;
}
