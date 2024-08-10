import 'package:flutter/material.dart';

class MoneyCard extends StatelessWidget {
  final String textNation;
  final String textNumber;
  final String textNationNum;
  final Color bgColor;
  final IconData icon;
  final double offsetY;

  const MoneyCard({
    super.key,
    required this.textNation,
    required this.textNumber,
    required this.textNationNum,
    required this.icon,
    required this.bgColor,
    required this.offsetY,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, offsetY),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textNation,
                    style: TextStyle(
                      color: Colors.white.withOpacity(1),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        textNumber,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        textNationNum,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2,
                child: Transform.translate(
                  offset: const Offset(0, 14),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 78,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
