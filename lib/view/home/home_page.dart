import 'package:flutter/material.dart';
import 'package:my_portfolio/controller/services.dart';
import 'package:my_portfolio/view/about/about_page.dart';

import 'package:my_portfolio/widget/my_button.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var full = const LinearGradient(
      colors:  [
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
    final sizeof = MediaQuery.of(context).size;
    // final screenWidth = MediaQuery.of(context).size.width;
    // final isMobile = screenWidth < 600;
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4FC),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: controller.black.value ? full : less,
          ),
          child: Column(
            children: [
              SizedBox(
                height: sizeof.height * 0.05,
              ),
            
              SizedBox(
                height: sizeof.height * 0.2,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 244,
                  ),
                  Text(
                    "I'm Sinan Jifry",
                    style: TextStyle(fontSize: 80),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 244),
                  const Text(
                    'A front-end engineer and UI/UX designer helping startups turn \ntheir visions into a digital reality. I specialize in designing and \nbuilding modern mobile and web-based apps.',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  GestureDetector(
                    onTap: ()
                    {
                      
                    },
                    child: SizedBox(
                        height: 250,
                        width: 200,
                        child: Image.asset(
                          'assets/Character.png',
                          fit: BoxFit.cover,
                        )),
                  )
                ],
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 244,
                  ),
                  MyButton(
                    
                    width: 196,
                    height: 60,
                    name: 'See my resume',
                    elevation: 0,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  MyButton(
                    width: 196,
                    height: 60,
                    name: 'Get in touch',
                    elevation: 0,
                  )
                ],
              ),
              const SizedBox(
                height: 150,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 270,
                  ),
                  Text(
                    "Selected Work",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Material(
                  elevation: 5,
                  child: Container(
                    height: 565,
                    width: 1024,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Material(
                  elevation: 5,
                  child: Container(
                    height: 565,
                    width: 1024,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const Row(
                children: [
                  SizedBox(
                    width: 270,
                  ),
                  Text(
                    "Get to Know me",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 243,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Material(
                        elevation: 5,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AboutPage()));
                          },
                          child: Container(
                            height: 504,
                            width: 504,
                            color: Colors.white,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 60,
                                ),
                                const Text(
                                  "About me",
                                  style: TextStyle(fontSize: 32),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Text(
                                  "Who I am and what I do",
                                  style: TextStyle(fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 68,
                                ),
                                SizedBox(
                                    height: 250,
                                    width: 200,
                                    child: Image.asset(
                                      'assets/Character.png',
                                      fit: BoxFit.cover,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Material(
                        elevation: 5,
                        child: Container(
                          height: 504,
                          width: 504,
                          color: Colors.white,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 60,
                              ),
                              const Text(
                                "Tech Stack",
                                style: TextStyle(fontSize: 32),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Text(
                                "The dev tools, apps, devices, and games I use and play.",
                                style: TextStyle(fontSize: 16),
                              ),
                              const SizedBox(
                                height: 68,
                              ),
                              SizedBox(
                                height: 290,
                                width: 400,
                                child: Image.asset(
                                  'assets/tech.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 114,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 244,
                  ),
                  Text(
                    "Let’s work together",
                    style: TextStyle(fontSize: 48),
                  ),
                  SizedBox(
                    width: 400,
                  ),
                  MyButton(
                    width: 201,
                    height: 60,
                    name: 'Send messeage',
                    elevation: 0,
                  ),
                ],
              ),
              const Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 244,
                      ),
                      Text(
                        "Want to discuss an opportunity to create something\n great? I’m ready when you are.",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 549,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 114,
              ),
              Divider(
                height: 10,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
