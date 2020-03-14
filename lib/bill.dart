import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voting_app/styles.dart';
import 'package:voting_app/cutom_widgets.dart';
import 'package:voting_app/voting_widgets.dart';

class BillPage extends StatelessWidget {
  final Map data;

  BillPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double dynamicMediumHeight = MediaQuery.of(context).size.height * 0.25;
    double dynamicLargeWidth = MediaQuery.of(context).size.width * 0.95;
    if (dynamicLargeWidth > appSizes.largeWidth) {
      dynamicLargeWidth = appSizes.largeWidth;
    }
    return Scaffold(
      backgroundColor: appColors.background,
      appBar: AppBar(
        backgroundColor: appColors.mainTheme,
        title: Text('Vote on Bill'),
      ),
      body: Center(
        child: Container(
          width: dynamicLargeWidth,
          child: ListView(
            children: <Widget>[
              Container(
                  width: dynamicLargeWidth,
                  padding: EdgeInsets.all(appSizes.standardPadding),
                  child: Wrap(
                    children: <Widget>[
                      Text(
                        data["Short Title"],
                        style: appTextStyles.heading,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
              Wrap(
                children: <Widget>[
                  HouseIconsWidget(issuesMap: data, size: 40),
                  VotingStatusWidget(issuesMap: data, voted: false, size: 40),
                ],
              ),
              Container(
                width: appSizes.largeWidth,
                padding: EdgeInsets.all(20),
                child: Text(
                  data["Summary"],
                  style: appTextStyles.standard,
                ),
              ),
              BillInfoWidget(
                billText: data["text link pdf"],
                billEM: data["em link pdf"],
              ),
              Container(
                  width: dynamicLargeWidth,
                  padding: EdgeInsets.all(appSizes.standardPadding),
                  child: Wrap(
                    children: <Widget>[
                      Text(
                        "Current Voting Results",
                        style: appTextStyles.standardBold,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
              PieWidget(
                // get from data
                yes: data["Yes"],
                no: data["No"],
                radius: dynamicMediumHeight,
              ),
              VoteWidget(
                data: data,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BillInfoWidget extends StatelessWidget {
  /// Card directing voters to detailed info about the bill
  final billText;
  final billEM;
  BillInfoWidget({
    Key key,
    @required this.billText,
    @required this.billEM,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: appSizes.largeWidth,
        padding: EdgeInsets.all(appSizes.standardPadding),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(appSizes.cardCornerRadius)),
          elevation: appSizes.cardElevation,
          color: appColors.card,
          child: Container(
            margin: EdgeInsets.all(appSizes.standardMargin),
            padding: EdgeInsets.symmetric(
                vertical: appSizes.standardPadding, horizontal: 0),
            child: Column(
              children: <Widget>[
                Text("Bill Information:", style: appTextStyles.heading),
                Wrap(
//                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: <Widget>[
                    Container(
                      width: appSizes.smallWidth,
                      padding: EdgeInsets.all(appSizes.standardPadding),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(appSizes.standardPadding),
                            child: RaisedButton(
                              elevation: appSizes.cardElevation,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: appColors.buttonOutline, width: 2),
                                borderRadius: new BorderRadius.circular(
                                    appSizes.buttonRadius),
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                  '/pdf',
                                  arguments: this.billText,
                                );
                              },
                              color: appColors.button,
                              child: Text("View Bill Text",
                                  style: appTextStyles.yesnobutton),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Text of the bill as introduced into the Parliament",
                              style: appTextStyles.standardItalic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(appSizes.standardPadding),
                      width: appSizes.smallWidth,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(appSizes.standardMargin),
                            child: RaisedButton(
                              elevation: appSizes.cardElevation,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: appColors.buttonOutline, width: 3),
                                borderRadius: new BorderRadius.circular(
                                    appSizes.buttonRadius),
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                  '/pdf',
                                  arguments: this.billEM,
                                );
                              },
                              color: appColors.button,
                              child: Text(
                                "View Explanatory Memoranda",
                                style: appTextStyles.yesnobutton,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Explanatory Memorandum: Accompanies and provides an explanation of the content of the introduced version (first reading) of the bill.",
                              style: appTextStyles.standardItalic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
