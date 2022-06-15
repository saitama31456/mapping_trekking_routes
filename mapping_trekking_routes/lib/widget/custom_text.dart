import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;

  const CustomText({Key? key, required this.text, this.fontSize = 14}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize
      ),
    );
  }
}