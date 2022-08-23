import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String? txt, fontFamily;
  double? size;
  Color? color;
  bool? isBold;
  Alignment? alignment;
  TextAlign? textAlignment;

  CustomText(
      {Key? key, this.alignment, this.color, this.fontFamily, this.isBold, this.size, this.txt, this.textAlignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:alignment,
      child: Text(
        "$txt", style: TextStyle(fontFamily: fontFamily,
        fontSize: size,
        fontWeight: isBold == true ? FontWeight.bold : FontWeight.normal,
        color: color,),
        textAlign: textAlignment,
      ),
    );
  }
}
