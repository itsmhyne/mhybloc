import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhybloc/app.dart';
import 'package:mhybloc/general_observer.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = GeneralObserver();
  runApp(App());
}
