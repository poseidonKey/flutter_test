import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/my_carrot/components/card_icon_menu.dart';
import 'package:flutter_application_1/screens/my_carrot/components/my_carrot_header.dart';
import '../../models/icon_menu.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("나의 당근"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(.5),
          child: Divider(
            thickness: .5,
            height: .5,
            color: Colors.red,
          ),
        ),
      ),
      body: ListView(
        children: const [
          MyCarrotHeader(),
          CardIconMenu(iconMenuList: [],),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
