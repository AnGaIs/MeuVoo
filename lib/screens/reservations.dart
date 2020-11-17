import 'package:flutter/material.dart';

class Reservations extends StatefulWidget {

final Color color;

  const Reservations({Key key, this.color}) : super(key: key);

  @override
  _ReservationsState createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                color: widget.color,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.keyboard_backspace, color: Colors.white,size: 22),
                        SizedBox(width: 30),
                        Text("GRU",
                        style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.bold)),
                        SizedBox(width: 10),
                        Icon(Icons.swap_horiz,color: Colors.white,size: 22),
                        SizedBox(width: 10),
                        Text("JFK",
                        style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.bold)),
                        
                        SizedBox(width: 140),
                        Icon(Icons.clear_all_outlined,color: Colors.white,size: 22)
                      ],
                    ),
                    SizedBox(height: 13),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("12 Set - 15 Set",
                        style: TextStyle(color: Colors.white,fontSize: 13)),
                         Text("1 Adulto - Economica",
                        style: TextStyle(color: Colors.white,fontSize: 13))
                      ],
                    )
                  ],
                ),
              ),

              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  decoration: BoxDecoration(
                    color: Color(0xFFFf6f5fb),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    )
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.87,
                  child: SingleChildScrollView(
                   child:Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("21 Resultados",
                           style: TextStyle(fontSize: 22)),
                           Icon(Icons.filter_list, color: Colors.black,size: 22)
                        ],
                      ),

                      SizedBox(height: 30),

                      Container(
                        height: 590,
                        child: ListView(
                          children: <Widget>[
                              _reservationsItem(),
                              _reservationsItem(),
                              _reservationsItem(),
                              _reservationsItem(),
                              _reservationsItem(),
                          ],
                        ),
                      )
                    ],
                  ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

Widget _reservationsItem(){
  return Container(
    width: 500,
    height: 210,
    margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(14)
      )
    ),

    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.airplanemode_active, color: Colors.orange,size: 32),
            SizedBox(width: 15),
            Text("Avianca",
            style: TextStyle(fontSize: 19, fontWeight:FontWeight.bold)),
            SizedBox(width: 120),
            Text("R\$ 998", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            SizedBox(width: 15),
            Icon(Icons.trending_flat,color: Colors.black,size: 22)
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              _itemDepartment(),
              _locationPlane(),
              _itemDepartment2()
          ],
        )
      ],
    ),

  );
}

Widget _itemDepartment(){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Partida", style: TextStyle(color: Colors.black54)),
        SizedBox(height: 10),
        Text("04:55", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        SizedBox(height: 1),
        Text("GRU", style: TextStyle(color: Colors.black54)),
        SizedBox(height: 20),
        Text("21:55", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
         SizedBox(height: 1),
        Text("JFK", style: TextStyle(color: Colors.black54)),
      ],
    ),
  );
}

Widget _itemDepartment2(){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Chegada", style: TextStyle(color: Colors.black54)),
        SizedBox(height: 10),
        Text("09:55", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        SizedBox(height: 1),
        Text("JFK", style: TextStyle(color: Colors.black54)),
        SizedBox(height: 20),
        Text("02:45", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
         SizedBox(height: 1),
        Text("GRU", style: TextStyle(color: Colors.black54)),
      ],
    ),
  );
}

Widget _locationPlane(){
  return Container(
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.flight_takeoff, color: Colors.blue,size: 21),
            Icon(Icons.fiber_manual_record,color: Colors.blue,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.blue,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.blue,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.blue,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.blue,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.green,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.green,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.green,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.green,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.green,size: 8),
            Icon(Icons.location_on, color: Colors.blue,size: 21),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Icon(Icons.location_on, color: Colors.blue,size: 21),
            Icon(Icons.fiber_manual_record,color: Colors.blue,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.blue,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.blue,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.blue,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.blue,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.green,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.green,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.green,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.green,size: 8),
            Icon(Icons.fiber_manual_record,color: Colors.green,size: 8),
            Icon(Icons.flight_takeoff, color: Colors.blue,size: 21),
          ],
        )
      ],
    ),
  );
}