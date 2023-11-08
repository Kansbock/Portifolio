import 'package:flutter/material.dart';
import 'package:portfolio/Pages/formacaopage.dart';
import 'package:portfolio/Pages/linguagenspage.dart';
import 'package:portfolio/Pages/softwarepage.dart';
import 'package:portfolio/Widgets/appbarmobile.dart';
import 'package:portfolio/Widgets/appbarweb.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:portfolio/Widgets/expandablefab.dart';
import 'package:portfolio/Widgets/iconegit.dart';
import 'package:portfolio/Widgets/iconerepositorio.dart';
import 'package:portfolio/breakpoints.dart';
import '../Widgets/rodape.dart';


class CodeQuest extends StatefulWidget {
  const CodeQuest({super.key});

  @override
  State<CodeQuest> createState() => _CodeQuestState();
}

class _CodeQuestState extends State<CodeQuest> {
  int pressionado = 0;
  String imagem1 = 'assets/imagens/galeriajogo1.png';
  String imagem2 = 'assets/imagens/galeriajogo2.png';
  String imagem3 = 'assets/imagens/galeriajogo3.png';
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/imagens/logo.png",
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child: Text("CodeQuest", style: TextStyle(fontSize: 40, color: Colors.white),),
                    ),
                  ],
                ),
                 Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                      child: Container(
                        width: 1000,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10.0),
                      ),
                      child:  const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: AutoSizeText(
                              'Durante o meu primeiro semestre na faculdade, participei de um projeto chamado CodeQuest, cujo objetivo era desenvolver um jogo educativo utilizando as linguagens Python ou Java.',
                              style: TextStyle(fontSize: 20.0),
                              textAlign: TextAlign.center,
                              maxLines: 10,
                              
                        ),
                      ),
                                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Container(
                        width: constraints.maxWidth < mobileBreakpoint ? 600 : 1000,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10.0),
                      ),
                      child:  const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: AutoSizeText(
                              'CodeQuest é um jogo de questionário no qual os jogadores derrotam inimigos respondendo corretamente a perguntas relacionadas à "Programação Orientada a Objeto". O jogo apresenta quatro fases, cada uma com inimigos de diferentes níveis de dificuldade. Após concluir o jogo, um ranking é exibido com os melhores jogadores, levando em consideração tanto a velocidade quanto a quantidade de respostas corretas.',
                              style: TextStyle(fontSize: 20.0),
                              textAlign: TextAlign.center,
                              maxLines: 50,
                              
                        ),
                      ),
                    ),
                  ),
                  ],
                ),
                Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
          child: Text(
            "Galeria",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
        SizedBox(
          width: 600,
          child: Image.asset(pressionado == 0 ? imagem1 : pressionado == 1 ? imagem2 : imagem3),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Wrap(
            spacing: 200,
            children: [
              IconButton(
                    onPressed: () {
                      setState(() {
                        pressionado == 0 ? pressionado = 2 : pressionado --;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 60,
                    ),
                    iconSize: 60,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pressionado == 2 ? pressionado = 0 : pressionado ++;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 60,
                    ),
                    iconSize: 60,
                  )
            ],
          ),
        ),
      ],
    ),
                const Rodape()
              ],
            ),
          ),
        ),
        floatingActionButton:
         const ExpandableFab (
          distance: 120, children: [
          IconeGit(),
          IconeRepositorio(link: "https://github.com/Kansbock/CodeQuest")
        ],)
      );
        }
    );
  }
}