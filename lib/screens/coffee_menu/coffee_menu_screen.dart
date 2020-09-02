import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tammu_finance/constants/color_constant.dart';
import 'package:tammu_finance/constants/style_constant.dart';
import 'package:tammu_finance/models/item_model.dart';

import 'items_screen.dart' as itemsTab;

class CoffeeMenu extends StatefulWidget {
  static String routeName = "/coffee_menu";
  @override
  _CoffeeMenuState createState() => _CoffeeMenuState();
}

class _CoffeeMenuState extends State<CoffeeMenu> with SingleTickerProviderStateMixin {
  TabController controller;


  void initState(){
    controller = new TabController(vsync: this, length: 3);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Coffee Beans",
          style: mAppbarStyle,
        ),
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0,
        bottom: new TabBar(

          controller: controller,
          //source code lanjutan
          tabs: <Widget>[
            new Tab(text: "Arabica",),
            new Tab(text: "Robusta",),
            new Tab(text: "House Blend",),
          ],
        ),
      ),
      body:
      new TabBarView(
        //controller untuk tab bar
        controller: controller,
        children: <Widget>[
          //kemudian panggil halaman sesuai tab yang sudah dibuat
          new itemsTab.ItemsCoffee(),
          new itemsTab.itemsRobusta(),
          new itemsTab.ItemsCoffee(),
        ],
      ),

    );
  }
}
