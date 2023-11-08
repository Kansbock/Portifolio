// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconeGit extends StatefulWidget {
  const IconeGit({super.key});

  @override
  State<IconeGit> createState() => _IconeGitState();
}

class _IconeGitState extends State<IconeGit> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        const url = 'https://github.com/Kansbock';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Não foi possível abrir $url';
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
          child: Image.network('https://cdn-icons-png.flaticon.com/512/25/25231.png'),
        ),
      ),
    );
  }
}

