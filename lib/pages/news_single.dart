import 'package:flutter/material.dart';

class Single extends StatefulWidget {
  final String title;
  final String text;
  final String imageUrl;

  Single(this.title, this.text, this.imageUrl, {super.key});

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xff41824A),
          child: Column(
            children: [
              // TOP LOGO
              SizedBox(
                width: double.infinity,
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Stack(
                          children: [
                            Container(
                              width: 340,
                              height: 70,
                              decoration: const BoxDecoration(
                                color: Color(0xffFEFAF9),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 105,
                              child: Container(
                                width: 130,
                                height: 50,
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
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          print("Tapped on 'top logo'");
                          Navigator.of(context).pop();
                        },
                      ),
                      Container(
                        width: 340,
                        height: 650,
                        decoration: const BoxDecoration(
                            color: Color(0xffFEFAF9),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // IMAGE
                              Container(
                                width: 300,
                                height: 180,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                      'https://thegoodnewshub.com/cdn-cgi/image/width=773,height=435,fit=crop,quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2023/02/773x435_cmsv2_52c3e0be-4f4f-5ea0-8722-4635ca9296c7-6798282.jpg',
                                      fit: BoxFit.cover),
                                ),
                              ),

                              // TITLE
                              const Text(
                                'Solar-Powered Car Created From Scratch by Indian Maths Teacher',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const Divider(
                                color: Color(0xff67864A),
                              ),
                              // TEXT
                              Text(
                                'An Indian maths teacher has created a solar-powered car, after spending 11 years researching and developing the vehicle. And the product is a car that looks just like a Delorean- featuring upward-opening doors. Bilal Ahmed, from Srinagar in Kashmir, had a goal to build a luxurious and sustainable vehicle that would be accessible to more than just the wealthy.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              // BUTTONS
                              Row(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xff67864A),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.comment_outlined,
                                      color: Color(0xffFEFAF9),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 45,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xff67864A),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Color(0xffFEFAF9),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
