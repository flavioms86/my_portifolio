import 'package:flutter/material.dart';
import 'package:my_portifolio/widgets/Cards/intro_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: IntroCard(text: "Flavio Silva"),
      ),
    );
  }
}
