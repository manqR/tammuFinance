import 'package:flutter/material.dart';
import 'package:tammu_finance/constants/color_constant.dart';


class ItemModel {
  String name;
  String imgItem;
  String price;

  ItemModel(this.name, this.imgItem, this.price);
}

List<ItemModel> items = itemData
    .map((item) => ItemModel(
    item['name'],
    item['imgItem'],
    item['price']))
    .toList();

var itemData = [
  {
    "name": "Gayo",
    "imgItem": "assets/images/gayo.jpeg"
  },
  {
    "name": "Lintong",
    "imgItem": "assets/images/lintong.jpeg"
  },
  {
    "name": "Toraja",
    "imgItem": "assets/images/toraja.jpeg"
  },
  {
    "name": "Kerinci",
    "imgItem": "assets/images/kerinci.jpeg"
  },
  {
    "name": "Ethiopia",
    "imgItem": "assets/images/ethiopia.jpeg"
  }
];
