import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color(0xff41824A),
        // TOP LOGO
        child: SizedBox(
          width: double.infinity,
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 340,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Color(0xffFEFAF9),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
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
                      const SizedBox(height: 40),
                      Container(
                        width: 155,
                        height: 155,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                              'https://images.pexels.com/photos/2269872/pexels-photo-2269872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Wijzig foto")
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                // PROFIEL DATA
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  width: double.infinity,
                  height: 215,
                  decoration: const BoxDecoration(
                    color: Color(0xffFEFAF9),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 260,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xffF4F0EF),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(''),
                            Text(
                              'Naam',
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.edit_outlined),
                          ],
                        ),
                      ),
                      Container(
                        width: 260,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xffF4F0EF),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(''),
                            Text(
                              'Email',
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.edit_outlined),
                          ],
                        ),
                      ),
                      Container(
                        width: 260,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xffF4F0EF),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(''),
                            Text(
                              'Telefoonnummer',
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.edit_outlined),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                // SETTINGS
                Container(
                  margin: const EdgeInsets.only(right: 25),
                  width: double.infinity,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color(0xffFEFAF9),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 25),
                        width: double.infinity,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xff8FA877),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 130,
                            right: 50,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(''),
                              Text(
                                'Instellingen',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffFEFAF9),
                                ),
                              ),
                              Icon(
                                Icons.settings_outlined,
                                color: Color(0xffFEFAF9),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 25),
                        width: double.infinity,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xff8FA877),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 130,
                            right: 50,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(''),
                              Text(
                                'Privacy',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffFEFAF9),
                                ),
                              ),
                              Icon(
                                Icons.lock_outline,
                                color: Color(0xffFEFAF9),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
