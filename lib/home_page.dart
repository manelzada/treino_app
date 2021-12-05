import 'dart:convert';

import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                    fontSize: 30,
                    color: color.AppColor.homePageTitle,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                SizedBox(width: 10),
                Icon(Icons.calendar_today_outlined,
                    size: 20, color: color.AppColor.homePageIcons),
                SizedBox(width: 15),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                )
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "Seu programa",
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageSubtitle,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "Detalhes",
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageDetail,
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward,
                    size: 20, color: color.AppColor.homePageIcons)
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      color.AppColor.gradientFirst.withOpacity(0.8),
                      color.AppColor.gradientSecond.withOpacity(0.9),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(80),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 10),
                      blurRadius: 10,
                      color: color.AppColor.gradientSecond.withOpacity(0.2),
                    )
                  ]),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Proximo Exercicio',
                      style: TextStyle(
                          fontSize: 16,
                          color: color.AppColor.homePageContainerTextSmall),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Pernas',
                      style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.homePageContainerTextSmall),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'E inferiores',
                      style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.homePageContainerTextSmall),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.timer,
                            size: 20,
                            color: color.AppColor.secondPageIconColor),
                        const SizedBox(width: 5),
                        Text(
                          '60 min',
                          style: TextStyle(
                              fontSize: 14,
                              color: color.AppColor.homePageContainerTextSmall),
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: [
                              BoxShadow(
                                  color: color.AppColor.gradientFirst,
                                  blurRadius: 10,
                                  offset: Offset(4, 10))
                            ],
                          ),
                          child: const Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                            size: 60,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    margin: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 40,
                            offset: Offset(8, 18),
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.3)),
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(-1, -5),
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.3)),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    margin: const EdgeInsets.only(right: 200, bottom: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/figura1.png")),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: const EdgeInsets.only(left: 120, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Continue, Você é forte",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: color.AppColor.homePageDetail,
                          ),
                        ),
                        const SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                              text: "Fique firme\n",
                              style: TextStyle(
                                  color: color.AppColor.homePagePlanColor,
                                  fontSize: 16),
                              children: const [
                                TextSpan(
                                  text: "Continue no seu plano",
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Treinos",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: color.AppColor.homePageTitle),
                )
              ],
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: info.length,
                  itemBuilder: (_, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(info[index]['img']),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            offset: Offset(5, 5),
                            color:
                                color.AppColor.gradientSecond.withOpacity(0.1),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            info[index]['title'],
                            style: TextStyle(
                              fontSize: 16,
                              color: color.AppColor.homePageDetail,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
