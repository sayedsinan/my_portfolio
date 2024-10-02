import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:my_portfolio/widget/my_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeof = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF1F4FC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: sizeof.height * 0.05,
            ),
            SizedBox(
              child: Row(
                children: [
                  SizedBox(
                    width: 244,
                  ),
                  Icon(Icons.e_mobiledata),
                  SizedBox(
                    width: 40,
                  ),
                  Text('About'),
                  SizedBox(
                    width: 40,
                  ),
                  Text("Work"),
                  SizedBox(
                    width: 40,
                  ),
                  Text("NoteBook"),
                  SizedBox(
                    width: 40,
                  ),
                  Text("Contact"),
                  SizedBox(
                    width: 40,
                  ),
                  Text("More"),
                  SizedBox(
                    width: sizeof.width * 0.3,
                  ),
                  Icon(Icons.link_outlined),
                  SizedBox(
                    width: 24,
                  ),
                  Icon(Icons.abc),
                  SizedBox(
                    width: 40,
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
                  width: 244,
                ),
                const Text(
                  "I'm Sinan Jifry",
                  style: TextStyle(fontSize: 80),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(width: 244),
                Text(
                  'A front-end engineer and UI/UX designer helping startups turn \ntheir visions into a digital reality. I specialize in designing and \nbuilding modern mobile and web-based apps.',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  width: 45,
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
            const Row(
              children: [
                SizedBox(
                  width: 244,
                ),
                MyButton(
                  name: 'See my resume',
                  elevation: 0,
                ),
                SizedBox(
                  width: 16,
                ),
                MyButton(
                  name: 'Get in touch',
                  elevation: 0,
                )
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Row(
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
            SizedBox(
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
            SizedBox(
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
            SizedBox(height: 32),
            Row(
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
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 243,
                ),
                ClipRRect(
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
                const SizedBox(
                  width: 16,
                ),
                ClipRRect(
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
              ],
            ),
            SizedBox(
              height: 114,
            ),
            Row(
              children: [
                SizedBox(
                  width: 244,
                ),
                Text(
                  "Let’s work together",
                  style: TextStyle(fontSize: 48),
                ),
              ],
            ),
         Row(
           children: [
             const   Row(
                  children: [
                    SizedBox(
                      width: 244,
                    ),
                    Text(
                      "Want to discuss an opportunity to create something\n great? I’m ready when you are.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                   MyButton(name: "Send messeage",elevation: 5,)
           ],
         )
          ],
        ),
      ),
    );
  }
}
