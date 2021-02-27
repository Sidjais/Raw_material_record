import 'package:flutter/material.dart';
var Assembly=[
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

var Painting=[
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

var Ready=[
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

class DailyTask extends StatefulWidget {
  @override
  _DailyTaskState createState() => _DailyTaskState();
}

class _DailyTaskState extends State<DailyTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                ExpansionTile(
                  backgroundColor: Colors.black12,
                  collapsedBackgroundColor: Colors.black12,
                  title: Text('Assembly'),
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: Assembly.length,
                      itemBuilder: (BuildContext context, int index){
                        return Assembly[index];
                      },
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left:20,right:20 ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Text('Done',
                                style: TextStyle(color: Colors.white),),
                              color: Colors.green,
                              onPressed: (){
                                showDialog(
                                    context: context,
                                    builder: (context){
                                      return
                                        SendForPainting();
                                    }
                                );
                                //SendForPainting();
                              },
                            ),
                          ),
                          RawMaterialButton(
                            onPressed: (){
                              showDialog(
                                  context: context,
                                  builder: (context){
                                    return
                                      AddtoAssembly(); // NewCupboardData();
                                  }
                              );
                            },
                            fillColor: Colors.black26,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            constraints: BoxConstraints(
                                minHeight: 35,
                                minWidth: 35

                            ),
                            child: Icon(Icons.add),
                          ),
                          RawMaterialButton(
                            onPressed: (){
                              showDialog(
                                  context: context,
                                  builder: (context){
                                    return
                                      RemoveFromAssembly();
                                  }
                              );
                            },
                            fillColor: Colors.black26,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            constraints: BoxConstraints(
                                minHeight: 35,
                                minWidth: 35
                            ),
                            child: Icon(Icons.remove),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                ExpansionTile(
                  backgroundColor: Colors.black12,
                  collapsedBackgroundColor: Colors.black12,
                  title: Text('Painting'),
                  children:  [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: Painting.length,
                      itemBuilder: (BuildContext context, int index){
                        return Painting[index];
                      },
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left:20,right:20 ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Text('Done',
                                style: TextStyle(color: Colors.white),),
                              color: Colors.green,
                              onPressed: (){
                                showDialog(
                                    context: context,
                                    builder: (context){
                                      return
                                        PaintingDone(); // NewCupboardData();
                                    }
                                );
                              },
                            ),
                          ),
                          RawMaterialButton(
                            onPressed: (){
                              showDialog(
                                  context: context,
                                  builder: (context){
                                    return
                                      AddToPainting(); // NewCupboardData();
                                  }
                              );
                            },
                            fillColor: Colors.black26,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            constraints: BoxConstraints(
                                minHeight: 35,
                                minWidth: 35

                            ),
                            child: Icon(Icons.add),
                          ),
                          RawMaterialButton(
                            onPressed: (){
                              showDialog(
                                  context: context,
                                  builder: (context){
                                    return
                                      RemoveFromPainting(); // NewCupboardData();
                                  }
                              );
                            },
                            fillColor: Colors.black26,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            constraints: BoxConstraints(
                                minHeight: 35,
                                minWidth: 35
                            ),
                            child: Icon(Icons.remove),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                ExpansionTile(
                  backgroundColor: Colors.black12,
                  collapsedBackgroundColor: Colors.black12,
                  title: Text('Ready'),
                  children:  [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: Ready.length,
                      itemBuilder: (BuildContext context, int index){
                        return Ready[index];
                      },
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left:20,right:20 ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Text('Done',
                                style: TextStyle(color: Colors.white),),
                              color: Colors.green,
                              onPressed: (){
                                showDialog(
                                    context: context,
                                    builder: (context){
                                      return
                                        ReadyToBeSold(); // NewCupboardData();
                                    }
                                );
                              },
                            ),
                          ),
                          RawMaterialButton(
                            onPressed: (){
                              showDialog(
                                  context: context,
                                  builder: (context){
                                    return
                                      AddToReady(); // NewCupboardData();
                                  }
                              );
                            },
                            fillColor: Colors.black26,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            constraints: BoxConstraints(
                                minHeight: 35,
                                minWidth: 35

                            ),
                            child: Icon(Icons.add),
                          ),
                          RawMaterialButton(
                            onPressed: (){
                              showDialog(
                                  context: context,
                                  builder: (context){
                                    return
                                      RemoveFromReady(); // NewCupboardData();
                                  }
                              );
                            },
                            fillColor: Colors.black26,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            constraints: BoxConstraints(
                                minHeight: 35,
                                minWidth: 35
                            ),
                            child: Icon(Icons.remove),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );

  }
}

class SendForPainting extends StatefulWidget {
  @override
  _SendForPaintingState createState() => _SendForPaintingState();
}

class _SendForPaintingState extends State<SendForPainting> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: AlertDialog(title: Text('Send for Painting'),
            content: Container(
              height:MediaQuery.of(context).size.height/4.5,
              // width: 120,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Name'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Colour'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text('Quantity'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),


                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Back"),
                        onPressed: (){Navigator.of(context).pop();},
                      ),
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Submit"),
                        onPressed: (){},
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ],
    );;;
  }
}


class RemoveFromAssembly extends StatefulWidget {
  @override
  _RemoveFromAssemblyState createState() => _RemoveFromAssemblyState();
}

class _RemoveFromAssemblyState extends State<RemoveFromAssembly> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: AlertDialog(title: Text('Remove From Assembly'),
            content: Container(
              height:MediaQuery.of(context).size.height/4.5,
              // width: 120,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Name'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Colour'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text('Quantity'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),


                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Back"),
                        onPressed: (){Navigator.of(context).pop();},
                      ),
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Submit"),
                        onPressed: (){},
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ],
    );;;;
  }
}

class AddtoAssembly extends StatefulWidget {
  @override
  _AddtoAssemblyState createState() => _AddtoAssemblyState();
}

class _AddtoAssemblyState extends State<AddtoAssembly> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: AlertDialog(title: Text('Add to Assembly'),
            content: Container(
              height:MediaQuery.of(context).size.height/4.5,
              // width: 120,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Name'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text('Quantity'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),


                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Back"),
                        onPressed: (){Navigator.of(context).pop();},
                      ),
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Submit"),
                        onPressed: (){},
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ],
    );;;;
  }
}

class AddToPainting extends StatefulWidget {
  @override
  _AddToPaintingState createState() => _AddToPaintingState();
}

class _AddToPaintingState extends State<AddToPainting> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: AlertDialog(title: Text('Add to painting'),
            content: Container(
              height:MediaQuery.of(context).size.height/4.5,
              // width: 120,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Name'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Colour'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text('Quantity'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),


                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Back"),
                        onPressed: (){Navigator.of(context).pop();},
                      ),
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Submit"),
                        onPressed: (){},
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ],
    );;;;;
  }
}

class RemoveFromPainting extends StatefulWidget {
  @override
  _RemoveFromPaintingState createState() => _RemoveFromPaintingState();
}

class _RemoveFromPaintingState extends State<RemoveFromPainting> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: AlertDialog(title: Text('Remove From Painting'),
            content: Container(
              height:MediaQuery.of(context).size.height/4.5,
              // width: 120,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Name'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Colour'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text('Quantity'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),


                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Back"),
                        onPressed: (){Navigator.of(context).pop();},
                      ),
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Submit"),
                        onPressed: (){},
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ],
    );;;;;
  }
}

class PaintingDone extends StatefulWidget {
  @override
  _PaintingDoneState createState() => _PaintingDoneState();
}

class _PaintingDoneState extends State<PaintingDone> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: AlertDialog(title: Text('Painting Done'),
            content: Container(
              height:MediaQuery.of(context).size.height/4.5,
              // width: 120,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Name'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),


                  Row(
                    children: [
                      Text('Quantity'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),


                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Back"),
                        onPressed: (){Navigator.of(context).pop();},
                      ),
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Submit"),
                        onPressed: (){},
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ],
    );;;;;
  }
}

class AddToReady extends StatefulWidget {
  @override
  _AddToReadyState createState() => _AddToReadyState();
}

class _AddToReadyState extends State<AddToReady> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: AlertDialog(title: Text('Add to Ready'),
            content: Container(
              height:MediaQuery.of(context).size.height/4.5,
              // width: 120,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Name'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Colour'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text('Quantity'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),


                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Back"),
                        onPressed: (){Navigator.of(context).pop();},
                      ),
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Submit"),
                        onPressed: (){},
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ],
    ); ;
  }
}

class RemoveFromReady extends StatefulWidget {
  @override
  _RemoveFromReadyState createState() => _RemoveFromReadyState();
}

class _RemoveFromReadyState extends State<RemoveFromReady> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: AlertDialog(title: Text('Remove From Ready'),
            content: Container(
              height:MediaQuery.of(context).size.height/4.5,
              // width: 120,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Name'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Colour'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text('Quantity'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),


                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Back"),
                        onPressed: (){Navigator.of(context).pop();},
                      ),
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Submit"),
                        onPressed: (){},
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class ReadyToBeSold extends StatefulWidget {
  @override
  _ReadyToBeSoldState createState() => _ReadyToBeSoldState();
}

class _ReadyToBeSoldState extends State<ReadyToBeSold> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: AlertDialog(title: Text('Ready to be sold'),
            content: Container(
              height:MediaQuery.of(context).size.height/4.5,
              // width: 120,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Name'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Colour'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text('Quantity'),
                      SizedBox(width: 10,),
                      Expanded(
                        child: ConstrainedBox(
                          constraints:BoxConstraints(
                            minHeight: 35, maxHeight: 35,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12
                            ),
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),


                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Back"),
                        onPressed: (){Navigator.of(context).pop();},
                      ),
                      RaisedButton(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Submit"),
                        onPressed: (){},
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
