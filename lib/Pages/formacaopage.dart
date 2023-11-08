import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Pages/linguagenspage.dart';
import 'package:portfolio/Pages/softwarepage.dart';
import 'package:portfolio/Widgets/appbarmobile.dart';
import 'package:portfolio/Widgets/appbarweb.dart';
import 'package:portfolio/Widgets/iconegit.dart';
import 'package:portfolio/Widgets/rodape.dart';
import 'package:portfolio/breakpoints.dart';

class FormacaoPage extends StatefulWidget {
  const FormacaoPage({super.key});

  @override
  State<FormacaoPage> createState() => _FormacaoPageState();
}

class _FormacaoPageState extends State<FormacaoPage> {
  get center => null;

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
            body: Container(
              color: const Color.fromARGB(255, 16, 15, 15),
              child: ListView(
                children: [
                  const Padding(
                      padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                      child: Text("Curso Técnico:", style: TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 30),
                      child: Container(
                        width: 1000,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: AutoSizeText(
                            '  No momento, estou matriculado no curso de Ciência da Computação no Instituto Mauá de Tecnologia. Mesmo durante meu primeiro ano no programa, já consegui me envolver em quatro projetos diferentes, incluindo a criação deste site. Veja esses projetos na página inicial!',
                            style: TextStyle(fontSize: 20.0),
                            textAlign: TextAlign.center,
                            maxLines: 10,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                      child: Text("Graduação (Cursando):", style: TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 180),
                      child: Container(
                        width: 1000,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20),
                          child: AutoSizeText(
                            '  No momento, estou matriculado no curso de Ciência da Computação no Instituto Mauá de Tecnologia. Mesmo durante meu primeiro ano no programa, já consegui me envolver em quatro projetos diferentes, incluindo a criação deste site. Veja esses projetos na página inicial!',
                            style: TextStyle(fontSize: 20.0),
                            textAlign: TextAlign.center,
                            maxLines: 50,
                          ),
                        ),
                      ),
                    ),
                    const Rodape()
                ],
              ),
            ),
            floatingActionButton: const IconeGit(),
          );
  }
  );
}
}