import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mhybloc/extract/center_injection.dart';

class ContainerBiru extends StatelessWidget {
  const ContainerBiru({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      color: Colors.blue,
      child: CenterInjection(),
    );
  }
}
