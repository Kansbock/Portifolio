import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/breakpoints.dart';

class BotaoProjeto extends StatelessWidget {
  final String imagem;
  final String nome;
  final String descricao;
  final Widget pagina;
  const BotaoProjeto({super.key, required this.imagem, required this.nome, required this.descricao, required this.pagina});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
      return  Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
              MaterialPageRoute(
              builder: (context) => pagina,),);
            },
            child: Container(
              width: constraints.maxWidth < mobileBreakpoint ? 200 : 300,
              height: constraints.maxWidth < mobileBreakpoint ? 200 : 300,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(200 ), image: DecorationImage(
                image: AssetImage(
                    imagem),
                fit: BoxFit.cover,
              ),),
            
              ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
            child:  constraints.maxWidth < mobileBreakpoint ?
            AutoSizeText(nome, style: const TextStyle(color: Colors.white, fontSize: 22.5, fontWeight: FontWeight.bold)) :
            AutoSizeText(nome, style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          constraints.maxWidth < mobileBreakpoint ?
            AutoSizeText(descricao, style: const TextStyle(color: Colors.white, fontSize: 12.5, fontWeight: FontWeight.bold)) :
            AutoSizeText(descricao, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
        ],
      );
  });
}
}
