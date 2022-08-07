import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:mhybloc/blocs/counter_bloc.dart';
import 'package:mhybloc/blocs/user_bloc.dart';
import 'package:mhybloc/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<UserBloc>(
        create: (context) => UserBloc(),
        child: const HomePage(),
      ),
    );
  }
}
