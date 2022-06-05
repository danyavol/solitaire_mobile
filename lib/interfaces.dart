import 'package:solitaire_mobile/utils.dart';

enum Suit {
  diamonds, // ♦
  hearts, // ♥
  clubs, // ♣
  spades // ♠
}

enum Rank {
  ace, // A
  two, // 2
  three, // 3
  four, // 4
  five, // 5
  six, // 6
  seven, // 7
  eight, // 8
  nine, // 9
  ten, // 10
  jack, // J
  queen, // Q
  king // K
}

enum Color {
  red,
  black
}

class Card {
  final String id;
  final Rank rank;
  final Suit suit;
  final Color color;
  final String imagePath;

  Card(this.rank, this.suit, this.imagePath) :
    id = getCardId(rank, suit),
    color = suit == Suit.diamonds || suit == Suit.hearts ? Color.red : Color.black;
}