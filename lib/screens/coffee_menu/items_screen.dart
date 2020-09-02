import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tammu_finance/constants/color_constant.dart';
import 'package:tammu_finance/models/item_model.dart';

class ItemsCoffee extends StatefulWidget {
  @override
  _ItemsCoffeeState createState() => _ItemsCoffeeState();
}

class _ItemsCoffeeState extends State<ItemsCoffee> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      GridView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 40.0,
          crossAxisSpacing: 15.0,
        ),
        itemBuilder: (context, index) {
          return  Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(

                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xffA22447).withOpacity(.05),
                      offset: Offset(0, 0),
                      blurRadius: 20,
                      spreadRadius: 3)
                ]),
            child: Material(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              elevation: 5,
              shadowColor: Color(0xffA22447).withOpacity(.05),
              color: Color(0xFFF7F7F7),
              child: SizedBox(

//                  child: Image.asset(
//                    items[index].imgItem,
//                    fit: BoxFit.cover, // and width here
//                  ),
//                  Positioned(
//                    child: Image.asset(
//                      items[index].imgItem,fit: BoxFit.fitHeight,
//                    ),
//                  ),
//                  Positioned(
//                    child: Align(
//                      alignment: FractionalOffset.bottomCenter,
//                      child: Padding(
//                        padding: EdgeInsets.only(bottom: 3.0),
//                        child: Text(
//                          items[index].name,
//                          style: GoogleFonts.nunito(
//                              fontSize: 12,
//                              fontWeight: FontWeight.w400,
//                              color: kBlackColor),
//                        ),
//                      ),
//                    ),
//                  ),
//
              ),

            ),
//            decoration: BoxDecoration(
//              border: Border.all(
//                color: kGreyColor,
//                width: .5,
//              ),
//              borderRadius: BorderRadius.all(
//                  Radius.circular(5.0)
//              ),
//            ),
//            child: Stack(
//              children: <Widget>[
//                Positioned(
//                  left: 16,
//                  top: 12,
//                  child: Image.asset(
//                    items[index].imgItem,
//                    height: 100,
//                    width: 100,
//                  ),
//                ),
//                Material(
//                  borderRadius: BorderRadius.only(
//                      bottomLeft: Radius.circular(10),
//                      bottomRight: Radius.circular(10)),
//                  elevation: 5,
//                  shadowColor: Color(0xffA22447).withOpacity(.05),
//                  color: Color(0xFFF7F7F7),
//                  child: SizedBox(
//                    height: MediaQuery.of(context).size.height / 3,
//                  ),
//                ),
//                Positioned(
//                  child: Align(
//                    alignment: FractionalOffset.bottomCenter,
//                    child: Padding(
//                      padding: EdgeInsets.only(bottom: 3.0),
//                      child: Text(
//                        items[index].name,
//                        style: GoogleFonts.nunito(
//                            fontSize: 12,
//                            fontWeight: FontWeight.w400,
//                            color: kBlackColor),
//                      ),
//                    ),
//                  ),
//                ),
//              ],
//            ),
          );
        },
      ),
    );
  }
}


// ------------------------- ROBUSTA --------------------------//
class itemsRobusta extends StatefulWidget {
  @override
  _itemsRobustaState createState() => _itemsRobustaState();
}

class _itemsRobustaState extends State<itemsRobusta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      GridView.builder(
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
              border: Border.all(
                color: kGreyColor,
                width: .5,
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(5.0)
              ),
            ),
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
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

