import 'package:meuvoo/components/btnPassengers.dart';
import 'package:flutter/material.dart';

class SelectOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              BtnPassengers(
                title: "Partida",
                label: "22 Dez, 2020",
                color: Color(0xFFFfeb578),
                iconData: Icons.today,
              ),
              BtnPassengers(
                title: "Retorno",
                label: "06 Jan, 2021",
                color: Color(0xFFF00d5d8),
                iconData: Icons.today,
              )
            ],
          ),
          SizedBox(height: 10),
           Row(
            children: <Widget>[
              BtnPassengers(
                title: "Passageiros",
                label: "2 Adultos",
                color: Color(0xFFFfe8db9),
                iconData: Icons.wc,
              ),
              BtnPassengers(
                title: "Classe",
                label: "Econômica",
                color: Color(0xFFF7d59ee),
                iconData: Icons.select_all,
              )
            ],
          )
        ],
    );
  }
}