import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool colorInverted;
  final int yAxisOrder;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.colorInverted,
    this.yAxisOrder = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -yAxisOrder.toDouble()),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: colorInverted ? Colors.white : const Color(0xFF1F2123),
          borderRadius: BorderRadius.circular(40)
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: colorInverted ? const Color(0xFF1F2123) : Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: colorInverted ? const Color(0xFF1F2123) : Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                        )
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: colorInverted ? const Color(0xFF1F2123) : Colors.white.withValues(alpha: 0.8),
                          fontSize: 17,
                          fontWeight: FontWeight.w400
                        )
                      )
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2,
                child: Transform.translate(
                  offset: const Offset(6, 15),
                  child: Icon(
                  icon,
                  color: colorInverted ? const Color(0xFF1F2123).withValues(alpha: 0.9) : Colors.white.withValues(alpha: 0.7),
                  size: 100,
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
