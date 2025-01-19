import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
      final sizeof = MediaQuery.of(context).size;
    return  SizedBox(
      child: Row(
        children: [
          const SizedBox(
            width: 244,
          ),
          const Icon(Icons.e_mobiledata),
          const SizedBox(
            width: 40,
          ),
          const Text('About'),
          const SizedBox(
            width: 40,
          ),
          const Text("Work"),
          const SizedBox(
            width: 40,
          ),
          const Text("NoteBook"),
          const SizedBox(
            width: 40,
          ),
          const Text("Contact"),
          const SizedBox(
            width: 40,
          ),
          const Text("More"),
          SizedBox(
            width: sizeof.width * 0.3,
          ),
          const Icon(Icons.link_outlined),
          const SizedBox(
            width: 24,
          ),
          const Icon(Icons.abc),
          const SizedBox(
            width: 40,
          ),
          const Icon(Icons.abc)
        ],
      ),
    );
  
  }
}
