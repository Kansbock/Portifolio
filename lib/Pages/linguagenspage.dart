import 'package:flutter/material.dart';
import 'package:portfolio/Pages/formacaopage.dart';
import 'package:portfolio/Pages/softwarepage.dart';
import 'package:portfolio/Widgets/appbarmobile.dart';
import 'package:portfolio/Widgets/appbarweb.dart';
import 'package:portfolio/Widgets/iconegit.dart';
import 'package:portfolio/Widgets/rodape.dart';
import 'package:portfolio/breakpoints.dart';

class LinguagensPage extends StatefulWidget {
  const LinguagensPage({super.key});

  @override
  State<LinguagensPage> createState() => _LinguagensPageState();
}

class _LinguagensPageState extends State<LinguagensPage> {
    int pressionado = 0;
    String imagemP ="assets/imagens/Python.png";
    String imagemJ ="assets/imagens/Java.png";
    String imagemS ="assets/imagens/SQL.png";
    String imagemH ="assets/imagens/HTML.png";
    String imagemC ="assets/imagens/CSS.png";
    String imagemJS ="assets/imagens/JavaScript.png";
    String imagemD ="assets/imagens/Dart.png";
  @override
  Widget build(BuildContext context) {

    return  LayoutBuilder(
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
            body: Center(child: 
            Container(
              color: const Color.fromARGB(255, 16, 15, 15),
              child: Column(
                children:  [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Text("Linguagens:", style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Image.asset(pressionado == 0 ? imagemJ : pressionado == 1 ? imagemP :
                    pressionado == 2 ? imagemS :
                    pressionado == 3 ? imagemH :
                    pressionado == 4 ? imagemC :
                    pressionado == 5 ? imagemJS :
                    imagemD),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(pressionado == 0 ? "Java" : pressionado == 1 ? "Python" :
                      pressionado == 2 ? "SQL" :
                      pressionado == 3 ? "HTML" :
                      pressionado == 4 ? "CSS" :
                      pressionado == 5 ? "JavaScript" :
                      "Dart", style: const TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                  Wrap(
                    spacing: 200,
                      children: [
                        IconButton(
                              onPressed: () {
                                setState(() {
                                  pressionado == 0 ? pressionado = 6 : pressionado --;
                                });
                              },
                              icon: const Icon(Icons.arrow_back,
                              color: Colors.white,
                                size: 60,
                                ),
                                iconSize: 60,
                            ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  pressionado == 6 ? pressionado = 0 : pressionado ++; 
                                });
                              },
                              icon: const Icon(Icons.arrow_forward,
                              color: Colors.white,
                                size: 60,
                                ),
                                iconSize: 60,
                            ),
                      ]
                    ),
                    const Spacer(),
                  const Rodape()
                ],
              ),
            )
            ),
            floatingActionButton: const IconeGit(),
          );
        }
      );
  }
}