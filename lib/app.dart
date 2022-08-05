import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhybloc/blocs/counter.dart';
import 'package:mhybloc/blocs/theme.dart';
import 'package:mhybloc/pages/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, bool>(
      bloc: context.read<ThemeBloc>(),
      builder: (context, state) {
        return MaterialApp(
          theme: state == true ? ThemeData.light() : ThemeData.dark(),
          home: const HomePage(),
        );
      },
    );
  }
}
