import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceryl/features/dashboard/components/body.dart';

class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
    );
  }

}