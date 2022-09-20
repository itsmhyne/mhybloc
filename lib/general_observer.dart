import 'package:bloc/bloc.dart';

class GeneralObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
    super.onTransition(bloc, transition);
    print(bloc);
    print(transition);
    print("=============================");
  }
}
