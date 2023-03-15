import 'package:flutter/material.dart';
import 'package:flutter_motoons/widgets/button.dart';
import 'package:flutter_motoons/widgets/currency_card.dart';

void main() {
  runApp(const App());
  // runApp 은 Widget을 args로 갖는다.
  // flutter 의 관점에서 Widget 이란 UI를 만드는 레고블럭 같은 것.
}

class App extends StatelessWidget {
  const App({super.key});

  // Widget 이 된 App은 StatelessWidget의 규칙을 따라야 함 => build를 생성해야 함
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:
            const Color(0xFF181818), // Color를 0xFF로 #color 를 지정할 수 있음
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20), // symetric은 padding의 위치를 따로 지정 가능
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // css 의 axis 개념과 유사함
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey, Lee",
                          style: TextStyle(
                            // Text Widget 내 style로 지정 가능
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "\$ 5 642 375",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                        textColor: Colors.black,
                        text: "Transfer",
                        bgColor: Colors.amber),
                    Button(
                        textColor: Colors.white70,
                        text: "Request",
                        bgColor: Color(0xFF1F2123))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Wallets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 24,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const CurrencyCard(
                  name: "Euro",
                  amount: "6 428",
                  code: "EUR",
                  icon: Icons.euro_rounded,
                  isInvert: false,
                  order: 0,
                ),
                const CurrencyCard(
                  name: "BitCoin",
                  amount: "9 785",
                  code: "BTC",
                  icon: Icons.currency_bitcoin_rounded,
                  isInvert: true,
                  order: 1,
                ),
                const CurrencyCard(
                  name: "Dollar",
                  amount: "428",
                  code: "USD",
                  icon: Icons.attach_money_rounded,
                  isInvert: false,
                  order: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
class App 을 Widget으로 만들기 위해서는 flutter SDK 에 있는 3가지 core 중에
하나를 상속 받아야 함 그중 하나가 StatelessWidget
*/
