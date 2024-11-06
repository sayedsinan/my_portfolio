import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.name,this.elevation,required this.height,required this.width});
  final String name;
  final double? elevation;
final double height;
final double width;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation!,
      child: SizedBox(
        height:height ,
        width: width,
      
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))),
          child: Text(
            name,
          ),
        ),
      ),
    );
  }
}
