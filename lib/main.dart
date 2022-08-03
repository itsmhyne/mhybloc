import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhybloc/bloc/counter_bloc.dart';
import 'package:mhybloc/views/basic_cubit.dart';
import 'package:mhybloc/views/bloc_builder_page.dart';
import 'package:mhybloc/views/bloc_listener_page.dart';
import 'package:mhybloc/views/bloc_consumer_page.dart';
import 'package:mhybloc/views/bloc_provider_page.dart';
import 'package:mhybloc/views/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        home: BlocProviderPage(),
      ),
    );
  }
}
