import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhybloc/bloc/counter_bloc.dart';
import 'package:mhybloc/extract/center_widget.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      height: 100,
      width: 200,
      child: center_widget(),
    );
  }
}
