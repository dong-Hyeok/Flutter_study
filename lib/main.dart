import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/button.dart';
import 'package:flutter_study/widgets/money_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "Hey, DongHyeok",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Welcome Flutter",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(
                                      0.5), // withOpacity는 런타임시 결정되기 떄문에 const 불가
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ])
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      "Total Balance",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$5 194 482",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 40,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          text: "Transfer",
                          bgColor: Colors.amber,
                          textColor: Colors.black,
                        ),
                        Button(
                          text: "Request",
                          bgColor: Color(0xFF1f2123),
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Wallets",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const MoneyCard(
                      textNation: "Euro",
                      textNumber: "6 428",
                      textNationNum: "EUR",
                      icon: Icons.euro_rounded,
                      bgColor: Colors.blue,
                      offsetY: 0,
                    ),
                    const MoneyCard(
                      textNation: "Euro",
                      textNumber: "6 428",
                      textNationNum: "EUR",
                      icon: Icons.euro_rounded,
                      bgColor: Colors.red,
                      offsetY: -20,
                    ),
                    const MoneyCard(
                      textNation: "Euro",
                      textNumber: "6 428",
                      textNationNum: "EUR",
                      icon: Icons.euro_rounded,
                      bgColor: Colors.green,
                      offsetY: -40,
                    ),
                  ]),
            ),
          )),
    );
  }
}
