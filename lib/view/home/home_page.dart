import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeof = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: sizeof.height * 0.05,
          ),
          SizedBox(
            child: Row(
              children: [
                SizedBox(
                  width: sizeof.width * 0.25,
                ),
                Icon(Icons.e_mobiledata),
                SizedBox(
                  width: sizeof.height * 0.02,
                ),
                Text('About'),
                SizedBox(
                  width: sizeof.height * 0.02,
                ),
                Text("Work"),
                SizedBox(
                  width: sizeof.height * 0.02,
                ),
                Text("NoteBook"),
                SizedBox(
                  width: sizeof.height * 0.02,
                ),
                Text("Contact"),
                SizedBox(
                  width: sizeof.height * 0.02,
                ),
                Text("More"),
                SizedBox(
                  width: sizeof.width * 0.3,
                ),
                Icon(Icons.link_outlined),
                SizedBox(
                  width: sizeof.height * 0.02,
                ),
                Icon(Icons.abc),
                SizedBox(
                  width: sizeof.height * 0.02,
                ),
                Icon(Icons.abc)
              ],
            ),
          ),
          SizedBox(
            height: sizeof.height * 0.2,
          ),
          Row(
            children: [
              SizedBox(
                width: sizeof.height * 0.5,
              ),
              const Text("I'm Sinan Jifry")
            ],
          ),
          SizedBox(
            height: sizeof.height * 0.1,
          ),
          Row(
            children: [
              SizedBox(width: sizeof.width*0.3,),
              Text('data')],
          )
        ],
      ),
    );
  }
}
