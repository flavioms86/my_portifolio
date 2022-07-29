import 'package:flutter/material.dart';
import 'package:my_portifolio/widgets/Cards/intro_card.dart';
import 'package:my_portifolio/widgets/Header/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [Header()],
            ),
          ),
        ),
      ),
    );
  }
}
