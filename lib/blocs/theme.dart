// ignore_for_file: slash_for_doc_comments

import 'package:bloc/bloc.dart';

class ThemeBloc extends Cubit<bool> {
  /**
   * Logic
   * true = light
   * false = dark
   */
  ThemeBloc() : super(true);

  void changeTheme() => emit(!state);
  @override
  void onChange(Change<bool> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }
}
