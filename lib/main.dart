
import 'package:flutter/material.dart';
import 'package:raw_material_record/RawMaterials.dart';
import 'CupboardData.dart';
import 'package:raw_material_record/DailyTask.dart';
import 'Reports.dart';

void main() {
  runApp(Raw_Materials());
}
class Raw_Materials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                child: Text('Raw Materials'),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RawMaterials()),);
                },
              ),
              RaisedButton(
                child: Text('Cupboard Data'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CupboardData()),);
                },
              ),
              RaisedButton(
                child: Text('Daily Task'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DailyTask()),);
                },
              ),
              RaisedButton(
                child: Text('Reports'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Reports()),);
                },
              ),
              RaisedButton(
                child: Text('General Settings'),
              ),
              RaisedButton(
                child: Text('About Us'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
