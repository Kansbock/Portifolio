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


class Semeador extends StatefulWidget {
  const Semeador({super.key});

  @override
  State<Semeador> createState() => _SemeadorState();
}

class _SemeadorState extends State<Semeador> {
  int pressionado = 0;
  String imagem1 = 'assets/imagens/galeriasite1.png';
  String imagem2 = 'assets/imagens/galeriasite2.png';
  String imagem3 = 'assets/imagens/galeriasite3.png';
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
                  children: [ Container(
                          width: 300,
                          height: 300,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(200, ), image:  const DecorationImage(
                            image: NetworkImage('data:image/png;base64,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'),
                            fit: BoxFit.cover,
                        )
                        )
                              ),
                     Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child: Text("Site O Semeador (Em andamento)", 
                      style:constraints.maxWidth < mobileBreakpoint ? const TextStyle(fontSize: 20, color: Colors.white) : const TextStyle(fontSize: 40, color: Colors.white), ),
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
                              'Durante o segundo semestre da faculdade, estou envolvido na criação de um site utilizando HTML, JavaScript e CSS. O propósito desse projeto é desenvolver um site funcional para uma organização voluntária.',
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
                        width: 1000,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10.0),
                      ),
                      child:  const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: AutoSizeText(
                              'A instituição escolhida por nós é a "O Semeador Escola Metodista - AMAS", uma organização beneficente sem fins lucrativos que presta assistência a crianças e adolescentes com deficiência intelectual, múltiplas deficiências e autismo. O site solicitado é uma plataforma de divulgação com uma seção dedicada aos colaboradores da instituição.',
                              style: TextStyle(fontSize: 20.0),
                              textAlign: TextAlign.center,
                              maxLines: 10,
                              
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
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Rodape(),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: const ExpandableFab (
          distance: 120, children: [
          IconeGit(),
          IconeRepositorio(link: "https://github.com/Kansbock/O-Semeador")
        ],)

      );
        }
    );
  }
}
