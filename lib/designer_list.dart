import 'package:flutter/material.dart';
import 'designer.dart';

class DesignerList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: <Widget>[
        Designer("assets/img/amanda.jpg","Amanda Murphy", "Experience: 04 years", false),
        Designer("assets/img/grace.jpg","Grace Hartzel", "Experience: 15 years", true),
        Designer("assets/img/bella.jpg","Bella Hadid", "Experience: 10 years", true),
        Designer("assets/img/julia.jpg","Julia Bergshoeff", "Experience: 07 years", true),
        Designer("assets/img/malaika.jpg","Malaika Firth", "Experience: 05 years", true),
      ],
    );
  }
}