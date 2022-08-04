import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mhybloc/extract/container_kuning.dart';

class ContainerMerah extends StatelessWidget {
  const ContainerMerah({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.pink,
      child: ContainerKuning(),
    );
  }
}
