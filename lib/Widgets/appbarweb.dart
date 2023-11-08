import 'package:flutter/material.dart';
import 'package:portfolio/Pages/formacaopage.dart';
import 'package:portfolio/Pages/homepage.dart';
import 'package:portfolio/Pages/linguagenspage.dart';
import 'package:portfolio/Pages/softwarepage.dart';

class AppBarWeb extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWeb({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 72,
          title: Row(
            children: [
               TextButton(
               onPressed: () {
                Navigator.of(context).push(
                MaterialPageRoute(
                builder: (context) => const HomePage(),),);
               },
               child: const Text('MATHEUS KANSBOCK', style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
              const Spacer(),
              SizedBox(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => const HomePage(),),);
                  },
                  child: const Text('Início', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => const FormacaoPage(),),);
                  },
                  child: const Text('Formações', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => const LinguagensPage(),),);
                  },
                  child: const Text('Linguagens', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => const SoftWaresPage(),),);
                  },
                  child: const Text('Softwares', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        );
  }
}
