import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.name,this.elevation});
  final String name;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation!,
      child: SizedBox(
        height: 60,
        width: 196,
      
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
