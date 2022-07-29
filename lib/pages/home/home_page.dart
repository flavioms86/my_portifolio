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
              children: const [
                Header(),
                SizedBox(height: 25),
                Text(
                  "Projetos",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                ProjectCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 15),
            color: Colors.black.withOpacity(.15),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Meu Projeto",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.all(5),
                child: const Text(
                  "2022",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                fit: BoxFit
                    .cover, // To cover the entire Area maintain aspect ratio
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            """Texto a ser inserido para descrever o projeto em questão. Informações essenciais para ter uma dimensão exata do que se trata o projeto. Texto a ser inserido """,
            maxLines: 3,
            style: TextStyle(fontSize: 14, overflow: TextOverflow.ellipsis),
          )
        ],
      ),
    );
  }
}
