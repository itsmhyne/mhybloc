import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mhybloc/extract/container_biru.dart';

class ContainerKuning extends StatelessWidget {
  const ContainerKuning({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      color: Colors.amber,
      child: ContainerBiru(),
    );
  }
}
