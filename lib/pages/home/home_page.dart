import 'package:flutter/material.dart';
import 'package:my_portifolio/widgets/Cards/intro_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              IntroCard(text: "Card1"),
              IntroCard(text: "Card2"),
              IntroCard(text: "Card3"),
            ],
          ),
        ),
      ),
    );
  }
}
