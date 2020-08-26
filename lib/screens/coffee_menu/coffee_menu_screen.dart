import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tammu_finance/constants/color_constant.dart';
import 'package:tammu_finance/constants/style_constant.dart';
import 'package:tammu_finance/models/item_model.dart';

class CoffeeMenu extends StatefulWidget {
  static String routeName = "/coffee_menu";
  @override
  _CoffeeMenuState createState() => _CoffeeMenuState();
}

class _CoffeeMenuState extends State<CoffeeMenu> {
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
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
        return  Container(
            height: double.infinity,
            decoration: BoxDecoration(
//
//              border: Border(
//
//                right: BorderSide(width: 1.0, color: kGreyColor),
//
//              ),
              border: Border.all(
                color: kGreyColor, //                   <--- border color
                width: .5,
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(5.0) //         <--- border radius here
              ),
            ), //       <--- BoxDecoration here
            child: Stack(
              children: <Widget>[
                  Positioned(
                  left: 16,
                  top: 12,
                  child: Image.asset(
                    items[index].imgItem,
                    height: 100,
                    width: 100,
                  ),
                ),
                Positioned(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 3.0),
                        child: Text(
                          items[index].name,
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: kBlackColor),
                        ), //Your widget here,
                    ),
                  ),
                ),
              ],
//              child: Text(items[index].name, style: mServiceTitleStyle,),
            ),
          );
        },
      ),
    );
  }
}
