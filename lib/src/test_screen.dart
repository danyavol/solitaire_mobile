import 'package:flutter/material.dart';

import 'cards_services/card_deck_images.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> cards = [];
    double borderRadius = 10;

    for (var entry in deck1.entries) {
      cards.add(
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1)
              ),
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(3),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.asset(
                  entry.value,
                  width: 125,
                  height: 181.5,
                  fit: BoxFit.contain,
                ),
              )
          )
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Wrap(
            children: cards,
          )
        ],
      )
    );
  }

}