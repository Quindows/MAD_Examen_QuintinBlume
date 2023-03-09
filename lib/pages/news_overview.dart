import 'package:flutter/material.dart';
import 'package:mad_examen_quintinblume/models/news.dart';
import 'package:mad_examen_quintinblume/pages/news_single.dart';

class NewsOverview extends StatefulWidget {
  NewsOverview({super.key});

  @override
  State<NewsOverview> createState() => _NewsOverviewState();
}

class _NewsOverviewState extends State<NewsOverview> {
  List<NewsModel> loadedNews = [
    NewsModel(
        id: 'n1',
        title: 'Solar-Powered Car Created From Scratch by Indian Maths Teacher',
        text:
            'An Indian maths teacher has created a solar-powered car, after spending 11 years researching and developing the vehicle. And the product is a car that looks just like a Delorean- featuring upward-opening doors. Bilal Ahmed, from Srinagar in Kashmir, had a goal to build a luxurious and sustainable vehicle that would be accessible to more than just the wealthy.',
        imageUrl:
            'https://thegoodnewshub.com/cdn-cgi/image/width=773,height=435,fit=crop,quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2023/02/773x435_cmsv2_52c3e0be-4f4f-5ea0-8722-4635ca9296c7-6798282.jpg'),
    NewsModel(
        id: 'n2',
        title: 'New Penguin Colony is Found- From Space!',
        text:
            'A new penguin colony has been discovered, completely accidentally, from satellite photos taken of Antarctica from space. The penguin colony was identified from space through their droppings, which had stained the ice.',
        imageUrl:
            'https://thegoodnewshub.com/cdn-cgi/image/width=1920,height=1080,fit=crop,quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2023/01/zRMbv6nr7BTXyEzRQmyfwZ-1920-80.jpg.webp'),
    NewsModel(
        id: 'n3',
        title: 'Dog Recycling: Border Collie Finds and Collects Plastic',
        text:
            'Scruff, a thirteen year-old border collie, spent his whole life chasing sticks. However, his owners, David and Yvonne, were advised by their vet to stop throwing him sticks, as they could cut his mouth. That didn’t stop Scruff’s natural instincts, however. Instead, Scruff replaced the sticks with plastic bottles.',
        imageUrl:
            'https://thegoodnewshub.com/cdn-cgi/image/width=800,height=520,fit=crop,quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2023/01/324110897_705225894600893_6599028666861897257_n.jpg'),
    NewsModel(
        id: 'n4',
        title:
            'France Gives Citizens Up To 4000 Euros To Switch To Electric Bikes',
        text:
            'France will pay its citizens to give up cars and convert to electric bikes. The government wants people to switch from gas-guzzling vehicles, and are willing to pay their citizens up to 4000 euros to do so. This generous sum is an increase from a 3000 euro incentive that was previously offered.',
        imageUrl:
            'https://thegoodnewshub.com/cdn-cgi/image/width=800,height=600,fit=crop,quality=80,format=auto,onerror=redirect,metadata=none/wp-content/uploads/2022/08/peugeot-elc01-photo-principale.jpeg '),
  ];

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
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
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
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              // POST BUILDER
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.only(right: 25),
                    itemCount: loadedNews.length,
                    itemBuilder: (BuildContext context, int index) {
                      // POST
                      return InkWell(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 7),
                          decoration: const BoxDecoration(
                            color: Color(0xffFEFAF9),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Container(
                                  width: 180,
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Text(loadedNews[index].title),
                                        Divider(
                                          color: Color(0xff67864A),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 100,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                color: Color(0xff67864A),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Icon(
                                                Icons.comment_outlined,
                                                color: Color(0xffFEFAF9),
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                color: Color(0xff67864A),
                                                borderRadius:
                                                    BorderRadius.circular(10),
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
                                ),
                                Container(
                                  width: 155,
                                  height: 115,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                        loadedNews[index].imageUrl,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          print("Tapped on 'SINGLE'");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Single(
                                  loadedNews[index].title,
                                  loadedNews[index].text,
                                  loadedNews[index].imageUrl)));
                        },
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
