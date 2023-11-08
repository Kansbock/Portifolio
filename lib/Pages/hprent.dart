import 'package:flutter/material.dart';
import 'package:portfolio/Pages/formacaopage.dart';
import 'package:portfolio/Pages/linguagenspage.dart';
import 'package:portfolio/Pages/softwarepage.dart';
import 'package:portfolio/Widgets/appbarmobile.dart';
import 'package:portfolio/Widgets/appbarweb.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:portfolio/Widgets/iconegit.dart';
import 'package:portfolio/breakpoints.dart';
import '../Widgets/rodape.dart';


class HPRent extends StatefulWidget {
  const HPRent({super.key});

  @override
  State<HPRent> createState() => _HPRentState();
}

class _HPRentState extends State<HPRent> {
  int pressionado = 0;
  String imagem1 = 'assets/imagens/galeriacarro1.png';
  String imagem2 = 'assets/imagens/galeriacarro2.png';
  String imagem3 = 'assets/imagens/galeriacarro3.png';
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
                    Container(
              width: 300,
              height: 300,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(200, ), image: const DecorationImage(
                image: AssetImage(
                   'assets/imagens/Carro.jpg' ),
                fit: BoxFit.cover,
            )
            )
                  ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child: Text("HP Rent (Site fictício)", style: TextStyle(fontSize: 40, color: Colors.white),),
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
                              'Participei de um projeto especial na faculdade cujo objetivo era desenvolver um site utilizando a plataforma WordPress e, em seguida, hospedá-lo no ambiente MAMP.',
                              style: TextStyle(fontSize: 20.0),
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
                              'O site que desenvolvemos é chamado HP Rent e foi concebido como um serviço de aluguel de "super carros", ou seja, veículos caros, potentes e/ou modificados. No entanto, é importante ressaltar que o projeto foi criado exclusivamente com a finalidade de adquirir experiência na utilização da ferramenta e não está destinado a ser lançado oficialmente ou levado adiante',
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
        floatingActionButton: const IconeGit(),
      );
        }
    );
  }
}