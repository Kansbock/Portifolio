// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconeRepositorio extends StatefulWidget {
  final String link;
  const IconeRepositorio({Key? key, required this.link}) : super(key: key);

  @override
  State<IconeRepositorio> createState() => _IconeRepositorioState();
}

class _IconeRepositorioState extends State<IconeRepositorio> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(widget.link)) {
          await launch(widget.link);
        } else {
          throw 'Não foi possível abrir ${widget.link}';
        }
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Center(
          child: Image.asset("assets/imagens/repositorio.png"),
        ),
      ),
    );
  }
}
