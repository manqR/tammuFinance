import 'package:flutter/material.dart';
import 'package:tammu_finance/constants/color_constant.dart';


class CardModel {
  String name;
  String type;
  String balance;
  String valid;
  String moreIcon;
  String cardBackground;
  Color bgColor;
  Color firstColor;
  Color secondColor;

  CardModel(this.name, this.type, this.balance, this.valid, this.moreIcon,
      this.cardBackground, this.bgColor, this.firstColor, this.secondColor);
}

List<CardModel> cards = cardData
    .map((item) => CardModel(
    item['name'],
    item['type'],
    item['balance'],
    item['valid'],
    item['moreIcon'],
    item['cardBackground'],
    item['bgColor'],
    item['firstColor'],
    item['secondColor']))
    .toList();

var cardData = [
  {
    "name": "Your Balanced",
    "type": "assets/images/balanced.png",
    "balance": "20.528.337",
    "valid": "02/23",
    "moreIcon": 'assets/icons/more_icon_white.svg',
    "cardBackground":'assets/svg/background.svg',
    "bgColor": kJeniusCardColor,
    "firstColor": kWhiteColor,
    "secondColor": kWhiteColor
  },
  {
    "name": "Unpaid",
    "type": "assets/images/alarm.png",
    "balance": "6.352.251",
    "valid": "06/24",
    "moreIcon": 'assets/icons/more_icon_white.svg',
    "cardBackground":'assets/svg/mastercard_bg.svg',
    "bgColor": kUnpaidColor,
    "firstColor": kWhiteColor,
    "secondColor": kWhiteColor
  }
];
