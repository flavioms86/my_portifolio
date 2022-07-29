import 'package:flutter/material.dart';
import 'package:my_portifolio/widgets/Cards/intro_card.dart';
import 'package:my_portifolio/widgets/Header/header.dart';

import '../../widgets/Cards/project_card.dart';

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
              children: const [
                Header(),
                SizedBox(height: 25),
                Text(
                  "Projetos",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                ProjectCard(
                  projectName: "Meu Projeto",
                  projectYear: 2022,
                  projectDescription:
                      "Descrição do projeto para maiores detalhes.",
                  //aqui poderia ter colocado o projectImage mas ja esta definido valor padrão no construtor da classe
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
