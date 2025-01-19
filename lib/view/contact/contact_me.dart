import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/widget/app_bar.dart';

import '../../controller/services.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    var full = const LinearGradient(
      colors: [
        Color(0xFFFCEECB),
        Color(0xFFD3DCE8),
        Color(0xFFF7F1F6),
      ],
    );
    var less = const LinearGradient(
      colors: [
        Color.fromARGB(255, 158, 158, 158),
        Color(0xFFD3DCE8),
        Color(0xFFF7F1F6),
      ],
    );
    final controller = Get.find<Services>();
    // final sizeof = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4FC),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: controller.black.value ? full : less,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const MyAppBar(),
              const Padding(
                padding: EdgeInsets.only(left: 200.0, top: 160),
                child: Text(
                  "Get in touch",
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 200.0,
                ),
                child: Text(
                  "Let’s build something awesome.",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 533,
                    width: 1024,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 20),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    color: Colors.red,
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 20),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    color: Colors.yellow,
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 20),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    color: Colors.green,
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20.0, left: 390),
                              child: Text(
                                "New Messeage",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white),
                              ),
                            ),
                          
                          ],
                        ),
                          Divider(color: Colors.grey,),
                        Row(
                          children: [],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
