// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:portfolio/Pages/formacaopage.dart';
import 'package:portfolio/Pages/hprent.dart';
import 'package:portfolio/Pages/linguagenspage.dart';
import 'package:portfolio/Pages/semeador.dart';
import 'package:portfolio/Pages/softwarepage.dart';
import 'package:portfolio/Widgets/appbarmobile.dart';
import 'package:portfolio/Widgets/appbarweb.dart';
import 'package:portfolio/Widgets/botaoprojeto.dart';
import 'package:portfolio/Pages/codequestpage.dart';
import 'package:portfolio/Widgets/iconegit.dart';
import 'package:portfolio/Widgets/rodape.dart';
import 'package:portfolio/breakpoints.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
      return LayoutBuilder(
        builder: (context, constraints) {
          return Scaffold(
            appBar: constraints.maxWidth < mobileBreakpoint
                ? const PreferredSize(
                    preferredSize: Size(double.infinity, 56),
                    child: MobileAppBar(),
                  )
                : const PreferredSize(
                    preferredSize: Size(double.infinity, 72),
                    child: AppBarWeb(),
                  ),
            drawer: constraints.maxWidth < mobileBreakpoint ?  Drawer(
              backgroundColor: const Color.fromARGB(255, 16, 15, 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 25, 0, 25),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context) => const FormacaoPage(),),);
                    },
                    child: const Text('Formações', style: TextStyle(color: Colors.white, fontSize: 40),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 25, 0, 25),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context) => const LinguagensPage(),),);
                    },
                    child: const Text('Linguagens', style: TextStyle(color: Colors.white, fontSize: 40),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 25, 0, 25),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context) => const SoftWaresPage(),),);
                    },
                    child: const Text('Softwares', style: TextStyle(color: Colors.white, fontSize: 40),),
                  ),
                ),
              ],)
            ) : null,
            body: Center(
              child: Container(
                color: const Color.fromARGB(255, 16, 15, 15),
                child: ListView(
                  children: [
                     Padding(
                      padding: const EdgeInsets.fromLTRB(10, 40, 0, 5),
                      child: Text(
                        "Matheus Kansbock",
                        style: constraints.maxWidth < mobileBreakpoint
                            ? const TextStyle(fontSize: 40, color: Colors.white) : const TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                    Image.asset(
                      "assets/imagens/banner.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 60, 0, 10),
                      child: Center(
                        child: Column(
                          children: [
                            Text("Projetos:", style: TextStyle(fontSize: 35, color: Colors.white)),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text("Projetos em que participo:", style: TextStyle(color: Colors.white),),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 70, 0, 70),
                      child: Wrap(
                        spacing: 150,
                        runSpacing: 50,
                        alignment: WrapAlignment.center,
                        children: [
                          BotaoProjeto(imagem: "assets/imagens/jogo.png", nome: "CodeQuest", descricao: "The programming RPG", pagina: CodeQuest(),),
                          BotaoProjeto(imagem: "assets/imagens/Site.png", nome: "Site \"O Semeador\" (Em andamento)", descricao: "Site para a instituição O Semeador", pagina: Semeador()),
                          BotaoProjeto(imagem: "assets/imagens/Carro.jpg", nome: "Site fictício \"Hp rent\"", descricao: "Site criado em WordPress (Trabalho escolar)", pagina: HPRent()),
                        ],
                      ),
                    ),
                    const Rodape(),
                  ],
                ),
              ),
            ),
            floatingActionButton: const IconeGit(),
          );
        },
      );
  }
}
