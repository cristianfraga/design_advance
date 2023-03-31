import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              color: Colors.blueAccent,
              icon: Icons.grid_view_rounded,
              text: 'General'),
          _SingleCard(
              color: Colors.deepPurpleAccent,
              icon: Icons.directions_bus_rounded,
              text: 'Transport'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.purpleAccent,
              icon: Icons.shopping_cart_rounded,
              text: 'Shopping'),
          _SingleCard(
              color: Colors.orangeAccent,
              icon: Icons.attach_money_rounded,
              text: 'Bills'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.lime,
              icon: Icons.local_movies_rounded,
              text: 'Entertainment'),
          _SingleCard(
              color: Colors.greenAccent,
              icon: Icons.bakery_dining_rounded,
              text: 'Grocery'),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return _SingleCardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(icon, size: 35, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(text, style: TextStyle(color: color, fontSize: 18)),
        ],
      ),
    );
  }
}

class _SingleCardBackground extends StatelessWidget {
  final Widget child;

  const _SingleCardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
