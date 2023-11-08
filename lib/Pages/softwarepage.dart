import 'package:flutter/material.dart';
import 'package:portfolio/Pages/formacaopage.dart';
import 'package:portfolio/Pages/linguagenspage.dart';
import 'package:portfolio/Widgets/appbarmobile.dart';
import 'package:portfolio/Widgets/appbarweb.dart';
import 'package:portfolio/Widgets/iconegit.dart';
import 'package:portfolio/Widgets/rodape.dart';
import 'package:portfolio/breakpoints.dart';

class SoftWaresPage extends StatefulWidget {
  const SoftWaresPage({super.key});

  @override
  State<SoftWaresPage> createState() => _SoftWaresPageState();
}

class _SoftWaresPageState extends State<SoftWaresPage> {
    int pressionado = 0;
    String imagemV = "assets/imagens/VSCode.png";
    String imagemN = "assets/imagens/NetBeans.png";
    String imagemC = "assets/imagens/Colab.png";
    String imagemR = "assets/imagens/Replit.png";
    String imagemM = "assets/imagens/MySQL.png";
    String imagemF = "assets/imagens/Figma.png";
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
            body: Center(child: 
            Container(
              color: const Color.fromARGB(255, 16, 15, 15),
              child: Column(
                children:  [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Text("Softwares que utilizo:", style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Image.asset(pressionado == 0 ? imagemV : pressionado == 1 ? imagemN :
                    pressionado == 2 ? imagemC :
                    pressionado == 3 ? imagemR :
                    pressionado == 4 ? imagemM :
                    imagemF),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(pressionado == 0 ? "Visual Studio Code" : pressionado == 1 ? "Apache NetBeans" :
                      pressionado == 2 ? "Google Colab" :
                      pressionado == 3 ? "Replit" :
                      pressionado == 4 ? "MySQL" :
                      "Figma", style: const TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                  Wrap(
                    spacing: 200,
                      children: [
                        IconButton(
                              onPressed: () {
                                setState(() {
                                  pressionado == 0 ? pressionado = 5 : pressionado --;
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
                                  pressionado == 5 ? pressionado = 0 : pressionado ++; 
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