import 'package:craft/constant/categorise_list.dart';
import 'package:craft/view/client/categorise_page/helperhome/categorise.dart';
import 'package:flutter/material.dart';

class CategoriseAllPage extends StatelessWidget {
  const CategoriseAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(18),
              child: const Text(
                "جميع المهن",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Categorise(
                numberlist: iconCastom.length,
                // hight: MediaQuery.sizeOf(context).width,
              ),
            )
          ],
        ),
      )),
    );
  }
}
