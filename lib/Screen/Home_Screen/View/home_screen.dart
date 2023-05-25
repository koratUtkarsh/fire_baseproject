import 'package:fire_baseproject/Utils/fire_helper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("FireBase"),
          ),
          body: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  FireHelper.fireHelper.SingUp(email: "xyz@gmail.com", password: "5252552");
                },
                child: Text("Click"),
              ),
            ],
          ),
        ));
  }
}
