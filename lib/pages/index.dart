import 'package:flutter/material.dart';
import 'package:mad_examen_quintinblume/pages/news_overview.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff41824A),
      body: Center(
        // WHITE BACKGROUND
        child: Container(
          width: double.infinity,
          height: 720,
          decoration: const BoxDecoration(
            color: Color(0xffFEFAF9),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(120),
            ),
            // BOXSHADOW NEEDEDS
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // LOGO
              Container(
                width: 240,
                height: 90,
                decoration: const BoxDecoration(
                  color: Color(0xff67864A),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(100),
                    topLeft: Radius.circular(100),
                  ),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Straks.nl',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffFEFAF9),
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 120),
              // SLOGAN
              Container(
                width: 260,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 2.0, color: Color(0xff67864A)),
                  ),
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Het nieuws wat er echt toe doet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 330),
              // 'ZIE MEER' LINK`
              InkWell(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Zie meer'),
                      const Icon(Icons.arrow_downward_rounded),
                    ],
                  ),
                ),
                onTap: () {
                  print("Tapped on 'ZIE MEER'");
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => NewsOverview()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
