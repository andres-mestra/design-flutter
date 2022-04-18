import 'package:flutter/material.dart';
import 'package:desing/src/widgets/background.dart';
import 'package:desing/src/widgets/page_title.dart';
import 'package:desing/src/widgets/custom_navigation.dart';
import 'package:desing/src/widgets/card_table.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          //Titles
          PageTitle(),
          //Card Table
          CardTable(),
        ],
      ),
    );
  }
}
