
import 'package:ultimate_bundle/premium/furney/src/models/credit_card_model.dart';

class CreditCardList {
  static List<CreditCardModel> savedCreditCardList = [
    CreditCardModel(
      fullName: 'Violet Evergarden',
      noCard: 581351425142258122,
      cvv: 444,
      email: 'jscvrnd@byneet.com',
      expDate: DateTime.now(),
    ),
    CreditCardModel(
      fullName: 'Sakura Miyawaki',
      noCard: 455448435454843548,
      cvv: 232,
      email: 'sakura@byneet.com',
      expDate: DateTime.now(),
    ),
  ];
}
