import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/button.dart';

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
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
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
              )
            ]),
          )),
    );
  }
}

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFF1f2123),
          borderRadius: BorderRadius.circular(45)),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
        child: Text(
          "Request",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
