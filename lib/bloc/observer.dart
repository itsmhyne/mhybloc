import 'package:bloc/bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    // TODO: implement onChange
    super.onChange(bloc, change);
  }

  //  @override
  // void onTransition(Transition<CounterEvent, int> transition) {
  //   super.onTransition(transition);
  //   print(transition);
  // }
}
