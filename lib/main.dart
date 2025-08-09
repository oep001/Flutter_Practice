import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currencycard.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [ 
                const SizedBox(
                  height: 60,
                ), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey, Louie",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          )
                        ),
                        Text(
                          "Welcome Back",
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.6),
                            fontSize: 14,
                            fontWeight:FontWeight.w400,
                          )
                        ), 
                      ]
                    ),
                  ],
                ),
                const SizedBox(
                      height: 120,
                    ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Total Balance",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ]
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "\$5 194 582",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color:Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ]
                ),
                const SizedBox(
                  height: 18,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                    textColor: Colors.black,
                    bgColor: Color(0xFFF1B33B),
                    text: "Transfer"
                    ),
                    Button(
                    textColor: Colors.white,
                    bgColor: Color(0xFF1F2123),
                    text: "Request"
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Wallets",
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      )),
                    Column(
                      children: [
                        Text(
                          "View All",
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.7),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CurrencyCard(
                  name: "Euro",
                  code: "EUR", 
                  amount: "6 428", 
                  icon: Icons.euro_sharp, 
                  colorInverted: false
                ),
                const CurrencyCard(
                    name: "BitCoin",
                    code: "BTC",
                    amount: "1 108",
                    icon: Icons.currency_bitcoin_sharp,
                    colorInverted: true,
                    yAxisOrder: 30,
                ),
                const CurrencyCard(
                  name: "Dollar",
                  code: "USD",
                  amount: "46 361",
                  icon: Icons.money,
                  colorInverted: false,
                  yAxisOrder: 60,
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

