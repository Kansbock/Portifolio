import 'package:flutter/material.dart';
import 'package:portfolio/Pages/homepage.dart';
class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: const Text('MATHEUS KANSBOCK', style: TextStyle(color: Colors.white, fontSize: 25)),
                ),
                actions: [
                  IconButton(onPressed: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => const HomePage(),),);
                  }, icon: const Icon(Icons.home))
                ],
    );
  }
}
