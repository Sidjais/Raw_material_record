import 'package:flutter/material.dart';
int select = 1;
int select2=1;
var Assemblyy=[
  Column(
    children: [
      Text("Cupboard A")
    ],
  ),
  Column(
    children: [
      Text("Cupboard B")
    ],
  ),
  Text('...DATA WILL COME FROM DATABASE...')
];

var Paintingg=[
  Column(
    children: [
      Text("Cupboard C")
    ],
  ),
  Column(
    children: [
      Text("Cupboard D")
    ],
  ),
  Text('...DATA WILL COME FROM DATABASE...')
];

var Readyy=[
  Column(
    children: [
      Text("Cupboard E")
    ],
  ),
  Column(
    children: [
      Text("Cupboard F")
    ],
  ),
  Text('...DATA WILL COME FROM DATABASE...')
];

var sheets=[Text('Sheets from database')];
var glass=[Text('Glass from database')];
var hinges=[Text('Hinges from database')];
var lock=[Text('Lock from database')];

class Reports extends StatefulWidget {
  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text('Reports',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 30,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FlatButton(
                    child: Text(
                      'Assembly',
                      style: TextStyle(
                          color: select==1?Colors.black:Colors.black12,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                    onPressed: (){
                      setState(() {
                        select=1;

                      });
                    },
                  ),
                  FlatButton(
                    child: Text('Painting',
                      style: TextStyle(
                          color: select==2?Colors.black:Colors.black12,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),),
                    onPressed: (){
                      setState(() {
                        select=2;

                      });
                    },
                  ),
                  FlatButton(
                    child: Text('Ready',
                      style: TextStyle(
                          color: select==3?Colors.black:Colors.black12,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),),
                    onPressed: (){
                      setState(() {
                        select=3;

                      });
                    },
                  ),
                  FlatButton(
                    child: Text('Raw Materials',
                      style: TextStyle(
                          color: select==4?Colors.black:Colors.black12,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),),
                    onPressed: (){
                      setState(() {
                        select=4;
                      });
                    },
                  ),
                ],
              ),
            ),
            select==1? Assembly(): select==2? Painting() : select==3? Ready():Rawmaterials()
          ],
        ),
      ),
    );
  }
}

class Assembly extends StatefulWidget {
  @override
  _AssemblyState createState() => _AssemblyState();
}

class _AssemblyState extends State<Assembly> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Text('Assembly',
                        style: TextStyle(

                            fontSize: 25
                        ),),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: Assemblyy.length,
                      itemBuilder: (BuildContext context, int index){
                        return Assemblyy[index];
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40, right: 20),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text('Print',
                    style: TextStyle(color: Colors.white),),
                  color: Colors.green,
                  onPressed: (){

                    //SendForPainting();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Painting extends StatefulWidget {
  @override
  _PaintingState createState() => _PaintingState();
}

class _PaintingState extends State<Painting> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Text('Panting',
                        style: TextStyle(

                            fontSize: 25
                        ),),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: Paintingg.length,
                      itemBuilder: (BuildContext context, int index){
                        return Paintingg[index];
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40, right: 20),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text('Print',
                    style: TextStyle(color: Colors.white),),
                  color: Colors.green,
                  onPressed: (){

                    //SendForPainting();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}


class Ready extends StatefulWidget {
  @override
  _ReadyState createState() => _ReadyState();
}

class _ReadyState extends State<Ready> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Text('Ready',
                        style: TextStyle(

                            fontSize: 25
                        ),),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: Readyy.length,
                      itemBuilder: (BuildContext context, int index){
                        return Readyy[index];
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40, right: 20),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text('Print',
                    style: TextStyle(color: Colors.white),),
                  color: Colors.green,
                  onPressed: (){

                    //SendForPainting();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}

class Rawmaterials extends StatefulWidget {
  @override
  _RawmaterialsState createState() => _RawmaterialsState();
}

class _RawmaterialsState extends State<Rawmaterials> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Text('Raw Materials',
                        style: TextStyle(

                            fontSize: 25
                        ),),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 30,
                      ),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          FlatButton(
                            child: Text(
                              'Sheet',
                              style: TextStyle(
                                  color: select2==1?Colors.black:Colors.black12,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20),
                            ),
                            onPressed: (){
                              setState(() {
                                select2=1;

                              });
                            },
                          ),
                          FlatButton(
                            child: Text('Glass',
                              style: TextStyle(
                                  color: select2==2?Colors.black:Colors.black12,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20),),
                            onPressed: (){
                              setState(() {
                                select2=2;

                              });
                            },
                          ),
                          FlatButton(
                            child: Text('Hinges',
                              style: TextStyle(
                                  color: select2==3?Colors.black:Colors.black12,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20),),
                            onPressed: (){
                              setState(() {
                                select2=3;

                              });
                            },
                          ),
                          FlatButton(
                            child: Text('Lock',
                              style: TextStyle(
                                  color: select2==4?Colors.black:Colors.black12,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20),),
                            onPressed: (){
                              setState(() {
                                select2=4;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: select2==1? sheets.length: select2==2? glass.length : select2==3? hinges.length:lock.length,
                      itemBuilder: (BuildContext context, int index){
                        return select2==1? sheets[index]: select2==2? glass[index]: select2==3? hinges[index]:lock[index];
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40, right: 20),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text('Print',
                    style: TextStyle(color: Colors.white),),
                  color: Colors.green,
                  onPressed: (){

                    //SendForPainting();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
