import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/home_controller.dart';

class TextWidget extends StatelessWidget {
  final text;

  TextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: [
        Text('${text}'),  
        ElevatedButton(onPressed: () {
          Provider.of<CountController>(context, listen: false).increase();
        }, child: Icon(Icons.ac_unit_rounded))
      ],
    ),);
  }
}
