import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget{

  String appBarName = 'Designers';

  HeaderAppBar(this.appBarName);

  @override
  Widget build(BuildContext context) {

    appBarName = appBarName.toUpperCase();

    final iconAppBar = Container(
      height: 80,
      padding: EdgeInsets.only(
          top: 38.0,
          left: 20.0
      ),
      child: InkWell(
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );

    final designAppBar = Container(
      height: 80.0,
      padding: EdgeInsets.only(
          top: 24.0,
          right: 10.0
      ),
      child: Center(
        child: Text(
          appBarName,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w900
          ),
        ),
      ),
    );

    final imageAppBar = Container(
      height: 86.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/tecnologia.jpg'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.blueAccent , BlendMode.colorBurn)
          )
      ),
    );

    return Stack(
      children: <Widget>[
        imageAppBar,
        designAppBar,
        iconAppBar
      ],
    );
  }

}