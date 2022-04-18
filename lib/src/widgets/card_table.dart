import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.dashboard,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.purple,
              icon: Icons.directions_bus_filled,
              text: 'Trasport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.shopping_bag,
              text: 'Shopping',
            ),
            _SingleCard(
              color: Colors.amber[400]!,
              icon: Icons.article,
              text: 'General',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.indigo,
              icon: Icons.movie_filter,
              text: 'Entertainment',
            ),
            _SingleCard(
              color: Colors.green[600]!,
              icon: Icons.article,
              text: 'Grocery',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final boxDecoration = BoxDecoration(
    color: const Color.fromRGBO(62, 66, 107, 0.7),
    borderRadius: BorderRadius.circular(20),
  );

  final IconData icon;
  final Color color;
  final String text;

  _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: boxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, size: 35, color: Colors.grey[200]),
            radius: 30,
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          )
        ],
      ),
    );
  }
}
