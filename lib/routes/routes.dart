import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhybloc/bloc/counter_bloc.dart';
import 'package:mhybloc/error/not_found.dart';
import 'package:mhybloc/views/dependency_injection_page.dart';
import 'package:mhybloc/views/homepage.dart';
import 'package:mhybloc/views/othre_page.dart';

class MyRouters {
  final CounterBloc mycounter = CounterBloc();
  Route onGenerateRoute(RouteSettings seetings) {
    switch (seetings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: mycounter,
            child: DependencyInjectionPage(),
          ),
        );
      case "/other":
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: mycounter,
            child: OtherPage(),
          ),
        );
      default:
        return MaterialPageRoute(builder: (context) => const NotFound());
    }
  }
}
