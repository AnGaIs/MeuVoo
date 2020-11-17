import 'package:meuvoo/components/btnOptions.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
            BtnOptions(
              label: "Voos",
              color: Color(0xFFFf89380),
            ),
             BtnOptions(
              label: "Trens",
              color: Color(0xFFF9b9ba0),
            ),
             BtnOptions(
              label: "Ônibus",
              color: Color(0xFFF9b9ba0),
            ),
             BtnOptions(
              label: "Hoteis",
              color: Color(0xFFF9b9ba0),
            )
        ],
      ),
    );
  }
}