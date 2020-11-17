import 'package:meuvoo/widgets/boxDestination.dart';
import 'package:meuvoo/widgets/options.dart';
import 'package:meuvoo/widgets/recommendation.dart';
import 'package:meuvoo/widgets/selectOptions.dart';
import 'package:meuvoo/widgets/selectWay.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFf6f5fb),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.only(left: 30, top: 40, bottom: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Options(),
                    SizedBox(height: 20),
                    BoxDestination(),
                    SizedBox(height: 22),
                    SelectWay(),
                    SizedBox(height: 25),
                    SelectOptions(),
                    SizedBox(height: 16),
                    Recommendation()
                ],
              ),
            ),
          ),
        ),
    );
  }
}