import 'interfaces.dart';

String getCardId(Rank rank, Suit suit) {
  String cardId = "";
  switch (rank) {
    case Rank.ace: cardId += "A"; break;
    case Rank.two: cardId += "2"; break;
    case Rank.three: cardId += "3"; break;
    case Rank.four: cardId += "4"; break;
    case Rank.five: cardId += "5"; break;
    case Rank.six: cardId += "6"; break;
    case Rank.seven: cardId += "7"; break;
    case Rank.eight: cardId += "8"; break;
    case Rank.nine: cardId += "9"; break;
    case Rank.ten: cardId += "10"; break;
    case Rank.jack: cardId += "J"; break;
    case Rank.queen: cardId += "Q"; break;
    case Rank.king: cardId += "K"; break;
  }
  switch (suit) {
    case Suit.diamonds: cardId += "♦"; break;
    case Suit.hearts: cardId += "♥"; break;
    case Suit.clubs: cardId += "♣"; break;
    case Suit.spades: cardId += "♠"; break;
  }
  return cardId;
}

const backSideId = "BS";