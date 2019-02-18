import 'package:flutter/material.dart';

class Designer extends StatelessWidget{

  String pathImage = "assets/img/amanda.jpg";
  String name = "Amanda Murphy";
  String details = "Experience: 04 years";
  bool messageBool = false;

  Designer(this.pathImage, this.name, this.details, this.messageBool);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget messageState;
    if(messageBool){
      messageState = Container(
          margin: EdgeInsets.only(
              left: 30.0
          ),
          width: 70.0,
          height: 70.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red
          ),
          child: Container(
              margin: EdgeInsets.only(),
              child: Icon(
                Icons.mail,
                color: Colors.white,
                size: 40.0,
              )
          )
      );
    }
    else{
      messageState = Container(
          margin: EdgeInsets.only(
              left: 30.0
          ),
          width: 70.0,
          height: 70.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey
          ),
          child: Container(
              margin: EdgeInsets.only(),
              child: Icon(
                Icons.mail,
                color: Colors.black54,
                size: 40.0,
              )
          )
      );
    }

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 17.0
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          )
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails,
        messageState
      ],
    );
  }
}