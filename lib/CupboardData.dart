import 'package:flutter/material.dart';

var checked1= false;
var checked2= false;
var checked3= false;
var checked4= false;
var items =[
  ExpansionTile(
     backgroundColor: Colors.black12,
    collapsedBackgroundColor: Colors.black12,
    title: Text('Cupboard A'),
    subtitle: Text('1214'),
    children: [
      Text('Type   1214'),
      Text('...DATA WILL COME FROM DATABASE...'),
      Text('Price   Rupees 5000/-'),
      SizedBox(height: 10,)
    ],
  )
];
TextEditingController textEditingController1=TextEditingController();
class CupboardData extends StatefulWidget {
  @override
  _CupboardDataState createState() => _CupboardDataState();
}

class _CupboardDataState extends State<CupboardData> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
            child:Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text('Cupboard Data',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),),
                ),

                 Cupboards()
              ],
            )
        ),
      );

  }
}

class Cupboards extends StatefulWidget {
  @override
  CupboardsState createState() => CupboardsState();
}

class CupboardsState extends State<Cupboards> {
  @override
  Widget build(BuildContext context) {
    textEditingController1.text='';
    return  Expanded(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            TextField(

              decoration: InputDecoration(
                  hintText: 'Search',
                  fillColor: Colors.black12,
                  focusColor: Colors.black12,
                  //focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black12),
                  //  ),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12),borderRadius: BorderRadius.circular(30)),

                  filled: true,
                  suffixIcon: Icon(Icons.search)
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: items.length,
                          itemBuilder: (BuildContext context, int Index) {
                            return  items[Index];
                          }
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Row(
                          children: [
                            RawMaterialButton(
                              onPressed: (){
                                showDialog(
                                    context: context,
                                    builder: (context){
                                      return
                                        NewCupboardData();
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
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class NewCupboardData extends StatefulWidget {
  @override
  _NewCupboardDataState createState() => _NewCupboardDataState();
}

class _NewCupboardDataState extends State<NewCupboardData> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: SingleChildScrollView(
              child: AlertDialog(title: Text('New Cupboard Details'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
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
                        Text('Type  '),
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
                    Text('Raw Materials Required'),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          child: CheckboxListTile(
                            value: checked1,
                            title: Text('Metal Sheet'),
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (check){
                              setState(() {
                                checked1=check;
                              });
                            },
                          ),
                        ),
                        Text("X"),
                        SizedBox(width: 15,),
                        Expanded(
                          child: ConstrainedBox(
                            constraints:BoxConstraints(
                              minHeight: 35, maxHeight: 35,//maxWidth: MediaQuery.of(context).size.width/11,minWidth: 20
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
                    Row(
                      children: [
                        Expanded(
                          child: CheckboxListTile(
                            value: checked2,
                            title: Text('Hinges'),
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (check){
                              setState(() {
                                checked2=check;
                              });
                            },
                          ),
                        ),
                        Text("X"),
                        SizedBox(width: 10,),
                        Expanded(
                          child: ConstrainedBox(
                            constraints:BoxConstraints(
                              minHeight: 35, maxHeight: 35,//maxWidth: MediaQuery.of(context).size.width/11,minWidth: 20
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
                    Row(
                      children: [
                        Expanded(
                          child: CheckboxListTile(
                            value: checked3,
                            title: Text('Knob'),
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (check){
                              setState(() {
                                checked3=check;
                              });
                            },
                          ),
                        ),
                        Text("X"),
                        SizedBox(width: 15,),
                        Expanded(
                          child: ConstrainedBox(
                            constraints:BoxConstraints(
                              minHeight: 35, maxHeight: 35,//maxWidth: MediaQuery.of(context).size.width/11,minWidth: 20
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
                    Row(
                      children: [
                        Expanded(
                          child: CheckboxListTile(
                            value: checked4,
                            title: Text('Lock'),
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (check){
                              setState(() {
                                checked4=check;
                              });
                            },
                          ),
                        ),
                        Text("X"),
                        SizedBox(width: 15,),
                        Expanded(
                          child: ConstrainedBox(
                            constraints:BoxConstraints(
                              minHeight: 35, maxHeight: 35,//maxWidth: MediaQuery.of(context).size.width/11,minWidth: 20
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
                        Text('Price'),
                        SizedBox(width: MediaQuery.of(context).size.width/3,),
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
        ),
      ],
    );;
  }
}
