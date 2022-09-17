import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mhybloc/bloc/observer.dart';
import 'package:mhybloc/pages/homepage.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
