import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:tammu_finance/constants/color_constant.dart';
import 'package:tammu_finance/constants/style_constant.dart';
import 'package:tammu_finance/custom_icons/flutter_custom_icon.dart';
import 'package:tammu_finance/models/card_model.dart';
import 'package:tammu_finance/models/transaction_model.dart';
import 'package:tammu_finance/models/wallet_model.dart';
import 'package:tammu_finance/screens/coffee_menu/coffee_menu_screen.dart';


class HomeScreen extends StatefulWidget {
  static String routeName = "/home_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(
          "Tammu Roastery",
          style: mAppbarStyle
        ),
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            MyFlutterApp.navigation_drawer,
            color: kWhiteColor,
          ),
          onPressed: () {},
          padding: EdgeInsets.only(left: 8),
        ),

      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          height: 56,
          margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: kGradientColorLogin,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.mirror,
//              stops: const <double>[0.0, 1.0],
            ),
          ),
          child: ConfirmationSlider(
            onConfirmation: () {},
            height: 56,
            width: MediaQuery.of(context).size.width - 32,
            backgroundColor: Colors.transparent,
            shadow: BoxShadow(color: Colors.transparent),
            foregroundColor: kWhiteColor,
            foregroundShape: BorderRadius.circular(8),
            icon: MyFlutterApp.slide_icon,
            iconColor: kBlueColor,
            text: 'Slide for Payment',
            textStyle: GoogleFonts.nunito(
                fontSize: 14, color: kWhiteColor, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            // Card Account Section
            Padding(
              padding: EdgeInsets.only(left: 24, top: 8, bottom: 16),
              child: Text(
                'Hi, Adinugraha!',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: kBlackColor,
                ),
              ),
            ),


            Container(
              height: 175,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 16, right: 8),
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8),
                      height: 175,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: cards[index].bgColor,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x10000000),
                              blurRadius: 10,
                              spreadRadius: 4,
                              offset: Offset(0.0, 8.0))
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 16,
                            top: 12,
                            child: Image.asset(
                              cards[index].type,
                              height: 22,
                              width: 33,
                            ),
                          ),
                          Positioned(
                            right: 12,
                            top: 12,
                            child:
                            SvgPicture.asset(cards[index].cardBackground),
                          ),
                          Positioned(
                            top: 63,
                            left: 16,
                            child: Text(
                              cards[index].name,
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: cards[index].firstColor),
                            ),
                          ),

                          Positioned(
                            left: 16,
                            top: 81,
                            child: Text(
                              'Rp ' + cards[index].balance,
                              style: GoogleFonts.nunito(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: cards[index].secondColor),
                            ),
                          ),

                          Positioned(
                            right: 8,
                            bottom: 8,
                            child: SvgPicture.asset(
                              cards[index].moreIcon,
                              height: 24,
                              width: 24,
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),


            // Service Section
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
              child: Text(
                'Let\'s Shopping!',
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 81,
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 80,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/svg/coffee-bag.svg',
                                height: 33,
                                width: 33,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, CoffeeMenu.routeName);
                                      },
                                      child: Text(
                                        'Coffee Beans',
                                        style: mServiceTitleStyle,
                                      ),
                                    ),

                                    Text(
                                      'Buy Coffee Beans',
                                      style: mServiceSubtitleStyle,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 80,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/svg/roaster.svg',
                                height: 33,
                                width: 33,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Coffee Roasting',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Time to Roast',
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),


            // Las Transaction
            Padding(
                padding:
                EdgeInsets.only(left: 24, top: 32, bottom: 16, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Last Transactions',
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: kBlackColor,
                      ),
                    ),
                    Text(
                      'See all transactions',
                      style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: kBlueColor,
                      ),
                    ),
                  ],
                )),

            Container(
              height: 304,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 16, right: 16),
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 8),
                    height: 68,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x04000000),
                              blurRadius: 10,
                              spreadRadius: 10,
                              offset: Offset(0.0, 8.0))
                        ],
                        color: kWhiteColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 12,
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kWhiteGreyColor,
                                image: DecorationImage(
                                  image: AssetImage(transactions[index].imgIcon),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  transactions[index].invoiceNumber,
                                  style: GoogleFonts.nunito(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: kBlackColor),
                                ),
                                Text(
                                  transactions[index].name,
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: kBlackColor),
                                ),
                                Text(
                                  "x" + transactions[index].qty,
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: kGreyColor),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 8, bottom: 3),
                              child:
                              Text(
                                transactions[index].date,
                                style: GoogleFonts.nunito(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: kBlackColor),
                                ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child:
                              Text(
                                "Rp "+transactions[index].amount,
                                style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: kBlackColor),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
