import 'package:flutter/material.dart';

const blackTheme = Color(0xFF1F2123);
const whiteTheme = Colors.white;

class CurrencyCard extends StatelessWidget {
  final String name, amount, code;
  final IconData icon;
  final bool isInvert;
  final double order;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.amount,
    required this.code,
    required this.icon,
    required this.isInvert,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * order),
      child: Container(
        clipBehavior: Clip.hardEdge, // overflow : hidden
        // clipBehavior는 화면이 넘어갔을 시 어떻게 처리해야 할지 알려줌
        decoration: BoxDecoration(
          color: isInvert ? whiteTheme : blackTheme,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInvert ? blackTheme : whiteTheme,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInvert
                              ? blackTheme.withOpacity(0.8)
                              : whiteTheme.withOpacity(0.8),
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInvert
                              ? blackTheme.withOpacity(0.8)
                              : whiteTheme.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Transform.scale(
                // 배율로 키우기
                scale: 2,
                child: Transform.translate(
                  // 이동
                  offset: const Offset(5, 15),
                  child: Icon(
                    icon,
                    color: isInvert ? blackTheme : whiteTheme,
                    size: 88,
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
