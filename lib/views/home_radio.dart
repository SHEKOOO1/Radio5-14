import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radio/Custom_Widgets/txt.dart';

import '../controllers/home_controller.dart';
class HomeRadio extends StatefulWidget {
  const HomeRadio({Key? key}) : super(key: key);

  @override
  State<HomeRadio> createState() => _HomeRadioState();
}

class _HomeRadioState extends State<HomeRadio> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<RadioController>(context);
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          txt: 'Radio 5:14',
        ),
      ),
    );
  }
}
