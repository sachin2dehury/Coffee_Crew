import 'package:coffee_crew/model/user.dart';
import 'package:coffee_crew/screens/auth/auth.dart';
import 'package:coffee_crew/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    if (user == null){
      return Authenticate();
    } else {
      return Home();
    }
  }
}