import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhybloc/bloc/counter_bloc.dart';
import 'package:mhybloc/routes/routes.dart';
import 'package:mhybloc/views/basic_cubit.dart';
import 'package:mhybloc/views/bloc_builder_page.dart';
import 'package:mhybloc/views/bloc_listener_page.dart';
import 'package:mhybloc/views/bloc_consumer_page.dart';
import 'package:mhybloc/views/bloc_provider_page.dart';
import 'package:mhybloc/views/dependency_injection_page.dart';
import 'package:mhybloc/views/homepage.dart';
import 'package:mhybloc/views/othre_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final router = MyRouters();

// di di myapp
  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider(
  //     create: (context) => CounterBloc(),
  //     child: MaterialApp(
  //       home: DependencyInjectionPage(),
  //     ),
  //   );
  // }

  // di di scaffold
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: router.onGenerateRoute,
    );
  }
}
