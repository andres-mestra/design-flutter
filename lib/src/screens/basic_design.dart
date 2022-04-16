import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          //Image
          Image(image: AssetImage('assets/landscape.jpg')),
          //Title
          Title(),
          //Botton Section
          BottonSection()
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}

class BottonSection extends StatelessWidget {
  const BottonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        CustomButton(icon: Icons.call, text: 'Call'),
        CustomButton(icon: Icons.near_me, text: 'Route'),
        CustomButton(icon: Icons.share, text: 'Share'),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Colors.blue;

    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(icon, color: color),
        ),
        Text(text, style: const TextStyle(color: color))
      ],
    );
  }
}
