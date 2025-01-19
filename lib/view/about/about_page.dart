import 'package:flutter/material.dart';
import 'package:my_portfolio/controller/services.dart';
import 'package:my_portfolio/style/colors.dart';
import 'package:my_portfolio/widget/app_bar.dart';
import 'package:my_portfolio/widget/my_button.dart';
import 'package:get/get.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Services>();
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
    return Scaffold(
      appBar: const MyAppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: controller.black.value ? full : less,
        ),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          SizedBox(width: 244),
                          Text(
                            "A little bit about me",
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 244),
                          Text(
                            "Who I am and what I do.",
                            style: TextStyle(
                              fontSize: 24,
                              color: greyColor,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: greyColor,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Row(
                        children: [
                          SizedBox(width: 244),
                          Text(
                            " Who I am",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          SizedBox(width: 244),
                          Text(
                            " I’m Eihab (Pronounced “Ee-hab”) a multi-disciplinary front-end engineer\n and UI/UX designer based in Rabat, Morocco 🇲🇦.",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Row(
                        children: [
                          SizedBox(width: 244),
                          Text(
                            " What I Do",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          SizedBox(width: 244),
                          Text(
                            " With two years of invaluable experience in my role at Harmony\n Technology –– a tech company based here in Rabat, I have honed my\n skills in React.js, Next.js, TailwindCSS, and TypeScript, allowing me to\n craft seamless and interactive user experiences. During my time at\n Harmony Technology, I had the privilege of collaborating on projects\n for esteemed clients such as the Ministry of\n Health, Ministry of Education, and Ministry of Justice. \n experience to develop applications that directly impact the lives of\n Moroccan citizens.",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Row(
                        children: [
                          SizedBox(width: 244),
                          Text(
                            " What I Did",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          SizedBox(width: 244),
                          Text(
                            " Before delving into the realm of front end engineering, I spent five\n years as a graphic designer. This background has equipped me with a\n keen eye for aesthetics and a deep understanding of user-centered\n design principles. It enables me to seamlessly blend functionality and\n visual appeal in every project I undertake..",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      )
                    ],
                  ),
                  const SizedBox(height: 138),
                  Divider(color: greyColor),
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 443,
                      width: 344,
                      color: Colors.black,
                      child: Image.asset('assets/ghost.png'),
                    ),
                  ),
                 const  SizedBox(
                    height: 100,
                  ),
                const   MyButton(name: 'Get in touch', height: 60, width: 201)
                ],
              )
            ],
          ),
        ),
      ),
    );
  } 
}
