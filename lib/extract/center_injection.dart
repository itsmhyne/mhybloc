import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mhybloc/extract/text_widget.dart';

class CenterInjection extends StatelessWidget {
  const CenterInjection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextWidget(),
    );
  }
}
