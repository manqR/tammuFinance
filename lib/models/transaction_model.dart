import 'package:flutter/material.dart';
import 'package:tammu_finance/constants/color_constant.dart';

class TransactionModel {
  String invoiceNumber;
  String imgIcon;
  String name;
  Color colorType;
  String signType;
  String amount;
  String qty;
  String date;

  TransactionModel(this.invoiceNumber, this.imgIcon, this.name, this.colorType,
      this.signType,this.amount, this.qty, this.date);
}

List<TransactionModel> transactions = transactionData
    .map((item) => TransactionModel(
    item['invoiceNumber'],
    item['imgIcon'],
    item['name'],
    item['colorType'],
    item['signType'],
    item['amount'],
    item['qty'],
    item['date']))
    .toList();

var transactionData = [
  {
    "invoiceNumber" : "INV/C/08/20/0010",
    "imgIcon": "assets/images/coffee.png",
    "name": "Coffee Beans",
    "colorType": kGreenColor,
    "signType": "Rp ",
    "amount": "110.000",
    "qty": "2",
    "date": "20 Aug 2020",
  },
  {
    "invoiceNumber" : "INV/R/08/20/0006",
    "imgIcon": "assets/images/roaster.png",
    "name": "Coffee Roasting",
    "colorType": kGreenColor,
    "signType": "Rp ",
    "amount": "500.000",
    "qty": "20",
    "date": "19 Aug 2020",
  },
  {
    "invoiceNumber" : "INV/R/08/20/0005",
    "imgIcon": "assets/images/roaster.png",
    "name": "Coffee Roasting",
    "colorType": kGreenColor,
    "signType": "Rp ",
    "amount": "25.000",
    "qty": "1",
    "date": "18 Aug 2020",
  },
  {
    "invoiceNumber" : "INV/R/08/20/0004",
    "imgIcon": "assets/images/roaster.png",
    "name": "Coffee Roasting",
    "colorType": kGreenColor,
    "signType": "Rp ",
    "amount": "250.000",
    "qty": "10",
    "date": "15 Aug 2020",
  }

];
