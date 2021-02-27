import 'package:flutter/material.dart';
int select = 1;
var sheets=[Text('Sheets from database')];
var glass=[Text('Glass from database')];
var hinges=[Text('Hinges from database')];
var lock=[Text('Lock from database')];

TextEditingController textEditingController1=TextEditingController();
class RawMaterials extends StatefulWidget {
  @override
  _RawMaterialsState createState() => _RawMaterialsState();
}

class _RawMaterialsState extends State<RawMaterials> {
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Raw Materials',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                        ),),
                      RawMaterialButton(
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

                    ],
                  ),
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
                        child: Text('Glass',
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
                        child: Text('Hinges',
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
                        child: Text('Lock',
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
                select==1? Sheet(): select==2? Glass() : select==3? Hinges():Lock()
              ],
            )
        ),
      );

  }
}

class Sheet extends StatefulWidget {
  @override
  _SheetState createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  var srno=0;
  var total = 0;

  @override
  Widget build(BuildContext context) {
    textEditingController1.text='';
    return  Expanded(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(srno.toString(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                    Text('Sr.No.' ,style: TextStyle(
                        fontSize: 20,

                    ),)
                  ],
                ),
                Column(
                  children: [
                    Text(total.toString(),
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                    Text('Total' ,style: TextStyle(
                      fontSize: 20,

                    ),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
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
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('DIMENSIONS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                      SizedBox(height: 20,),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: select==1? sheets.length: select==2? glass.length : select==3? hinges.length:lock.length,
                        itemBuilder: (BuildContext context, int index){
                          return select==1? sheets[index]: select==2? glass[index]: select==3? hinges[index]:lock[index];
                        },
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
                                          Stack(
                                            children: [
                                              AlertDialog(title: Text('DIMENSIONS'),
                                                content: Container(
                                                  height:200,
                                                  width: 120,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
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
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 10,),
                                                          Text('X'),
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
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 10,),
                                                          Text('X'),
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
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          Text('Quantity'),
                                                          SizedBox(width: 10,),
                                                          // RawMaterialButton(
                                                          //   onPressed: (){
                                                          //     setState(() {
                                                          //       try{
                                                          //         if(textEditingController1.text!='')
                                                          //         {textEditingController1.text=(int.parse(textEditingController1.text)+1).toString();};
                                                          //         print((int.parse(textEditingController1.text)+1));
                                                          //       }
                                                          //       catch(e){
                                                          //         AlertDialog(
                                                          //           title: e,
                                                          //         );
                                                          //       }
                                                          //     });
                                                          //
                                                          //   },
                                                          //   fillColor: Colors.black26,
                                                          //   shape: RoundedRectangleBorder(
                                                          //     borderRadius: BorderRadius.circular(5.0),
                                                          //   ),
                                                          //   constraints: BoxConstraints(
                                                          //       minHeight: 35,
                                                          //       minWidth: 35
                                                          //   ),
                                                          //   child: Icon(Icons.add),
                                                          // ),

                                                          Expanded(
                                                            child: ConstrainedBox(
                                                              constraints:BoxConstraints(
                                                                minHeight: 35,  maxHeight: 35,
                                                              ),
                                                              child: TextFormField(
                                                                controller: textEditingController1,
                                                                keyboardType:TextInputType.phone ,
                                                                decoration: InputDecoration(
                                                                    border:  OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none,color: Colors.black12),borderRadius: BorderRadius.circular(5)),
                                                                    filled: true,
                                                                    fillColor: Colors.black12
                                                                ),
                                                              ),
                                                            ),
                                                          ),

                                                          // RawMaterialButton(
                                                          //   onPressed: (){
                                                          // setState(() {
                                                          //   try{
                                                          //     if(textEditingController1.text!='1' && textEditingController1.text!='')
                                                          //     {textEditingController1.text=(int.parse(textEditingController1.text)-1).toString();};
                                                          //   }
                                                          //   catch(e){
                                                          //     AlertDialog(
                                                          //       title: e,
                                                          //     );
                                                          //   }
                                                          // });
                                                          //   },
                                                          //   fillColor: Colors.black26,
                                                          //   shape: RoundedRectangleBorder(
                                                          //     borderRadius: BorderRadius.circular(5.0),
                                                          //   ),
                                                          //   constraints: BoxConstraints(
                                                          //       minHeight: 35,
                                                          //       minWidth: 35
                                                          //   ),
                                                          //   child: Icon(Icons.remove),
                                                          // ),
                                                        ],),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                            ],
                                          );
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
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Glass extends StatefulWidget {
  @override
  _GlassState createState() => _GlassState();
}

class _GlassState extends State<Glass> {
  var srno=0;
  var total = 0;

  @override
  Widget build(BuildContext context) {
    textEditingController1.text='';
    return  Expanded(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(srno.toString(),
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                    Text('Sr.No.' ,style: TextStyle(
                      fontSize: 20,

                    ),)
                  ],
                ),
                Column(
                  children: [
                    Text(total.toString(),
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                    Text('Total' ,style: TextStyle(
                      fontSize: 20,

                    ),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
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
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: select==1? sheets.length: select==2? glass.length : select==3? hinges.length:lock.length,
                        itemBuilder: (BuildContext context, int index){
                          return select==1? sheets[index]: select==2? glass[index]: select==3? hinges[index]:lock[index];
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          Row(
                            children: [
                              RawMaterialButton(
                                onPressed: (){
                                  // showDialog(
                                  //     context: context,
                                  //     builder: (context){
                                  //       return
                                  //         Stack(
                                  //           children: [
                                  //             AlertDialog(title: Text('DIMENSIONS'),
                                  //               content: Container(
                                  //                 height:200,
                                  //                 width: 120,
                                  //                 child: Column(
                                  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //                   children: [
                                  //                     Row(
                                  //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //                       children: [
                                  //                         Expanded(
                                  //                           child: ConstrainedBox(
                                  //                             constraints:BoxConstraints(
                                  //                               minHeight: 35, maxHeight: 35,
                                  //                             ),
                                  //                             child: TextField(
                                  //                               decoration: InputDecoration(
                                  //                                   border: InputBorder.none,
                                  //                                   filled: true,
                                  //                                   fillColor: Colors.black12
                                  //                               ),
                                  //                             ),
                                  //                           ),
                                  //                         ),
                                  //                         SizedBox(width: 10,),
                                  //                         Text('X'),
                                  //                         SizedBox(width: 10,),
                                  //                         Expanded(
                                  //                           child: ConstrainedBox(
                                  //                             constraints:BoxConstraints(
                                  //                               minHeight: 35, maxHeight: 35,
                                  //                             ),
                                  //                             child: TextField(
                                  //                               decoration: InputDecoration(
                                  //                                   border: InputBorder.none,
                                  //                                   filled: true,
                                  //                                   fillColor: Colors.black12
                                  //                               ),
                                  //                             ),
                                  //                           ),
                                  //                         ),
                                  //                         SizedBox(width: 10,),
                                  //                         Text('X'),
                                  //                         SizedBox(width: 10,),
                                  //                         Expanded(
                                  //                           child: ConstrainedBox(
                                  //                             constraints:BoxConstraints(
                                  //                               minHeight: 35, maxHeight: 35,
                                  //                             ),
                                  //                             child: TextField(
                                  //                               decoration: InputDecoration(
                                  //                                   border: InputBorder.none,
                                  //                                   filled: true,
                                  //                                   fillColor: Colors.black12
                                  //                               ),
                                  //                             ),
                                  //                           ),
                                  //                         ),
                                  //                       ],
                                  //                     ),
                                  //                     Row(
                                  //                       mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                  //                       children: [
                                  //                         Text('Quantity'),
                                  //                         SizedBox(width: 10,),
                                  //                         // RawMaterialButton(
                                  //                         //   onPressed: (){
                                  //                         //     setState(() {
                                  //                         //       try{
                                  //                         //         if(textEditingController1.text!='')
                                  //                         //         {textEditingController1.text=(int.parse(textEditingController1.text)+1).toString();};
                                  //                         //         print((int.parse(textEditingController1.text)+1));
                                  //                         //       }
                                  //                         //       catch(e){
                                  //                         //         AlertDialog(
                                  //                         //           title: e,
                                  //                         //         );
                                  //                         //       }
                                  //                         //     });
                                  //                         //
                                  //                         //   },
                                  //                         //   fillColor: Colors.black26,
                                  //                         //   shape: RoundedRectangleBorder(
                                  //                         //     borderRadius: BorderRadius.circular(5.0),
                                  //                         //   ),
                                  //                         //   constraints: BoxConstraints(
                                  //                         //       minHeight: 35,
                                  //                         //       minWidth: 35
                                  //                         //   ),
                                  //                         //   child: Icon(Icons.add),
                                  //                         // ),
                                  //
                                  //                         Expanded(
                                  //                           child: ConstrainedBox(
                                  //                             constraints:BoxConstraints(
                                  //                               minHeight: 35,  maxHeight: 35,
                                  //                             ),
                                  //                             child: TextFormField(
                                  //                               controller: textEditingController1,
                                  //                               keyboardType:TextInputType.phone ,
                                  //                               decoration: InputDecoration(
                                  //                                   border:  OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none,color: Colors.black12),borderRadius: BorderRadius.circular(5)),
                                  //                                   filled: true,
                                  //                                   fillColor: Colors.black12
                                  //                               ),
                                  //                             ),
                                  //                           ),
                                  //                         ),
                                  //
                                  //                         // RawMaterialButton(
                                  //                         //   onPressed: (){
                                  //                         // setState(() {
                                  //                         //   try{
                                  //                         //     if(textEditingController1.text!='1' && textEditingController1.text!='')
                                  //                         //     {textEditingController1.text=(int.parse(textEditingController1.text)-1).toString();};
                                  //                         //   }
                                  //                         //   catch(e){
                                  //                         //     AlertDialog(
                                  //                         //       title: e,
                                  //                         //     );
                                  //                         //   }
                                  //                         // });
                                  //                         //   },
                                  //                         //   fillColor: Colors.black26,
                                  //                         //   shape: RoundedRectangleBorder(
                                  //                         //     borderRadius: BorderRadius.circular(5.0),
                                  //                         //   ),
                                  //                         //   constraints: BoxConstraints(
                                  //                         //       minHeight: 35,
                                  //                         //       minWidth: 35
                                  //                         //   ),
                                  //                         //   child: Icon(Icons.remove),
                                  //                         // ),
                                  //                       ],),
                                  //                     Row(
                                  //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //                       children: [
                                  //                         RaisedButton(
                                  //                           shape:RoundedRectangleBorder(
                                  //                             borderRadius: BorderRadius.circular(20.0),
                                  //                           ),
                                  //                           child: Text("Back"),
                                  //                           onPressed: (){Navigator.of(context).pop();},
                                  //                         ),
                                  //                         RaisedButton(
                                  //                           shape:RoundedRectangleBorder(
                                  //                             borderRadius: BorderRadius.circular(20.0),
                                  //                           ),
                                  //                           child: Text("Submit"),
                                  //                           onPressed: (){},
                                  //                         )
                                  //                       ],
                                  //                     )
                                  //                   ],
                                  //                 ),
                                  //               ),
                                  //             ),
                                  //           ],
                                  //         );
                                  //     }
                                  // );
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
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Hinges extends StatefulWidget {
  @override
  _HingesState createState() => _HingesState();
}

class _HingesState extends State<Hinges> {
  var srno=0;
  var total = 0;

  @override
  Widget build(BuildContext context) {
    textEditingController1.text='';
    return  Expanded(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(srno.toString(),
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                    Text('Sr.No.' ,style: TextStyle(
                      fontSize: 20,

                    ),)
                  ],
                ),
                Column(
                  children: [
                    Text(total.toString(),
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                    Text('Total' ,style: TextStyle(
                      fontSize: 20,

                    ),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
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
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: select==1? sheets.length: select==2? glass.length : select==3? hinges.length:lock.length,
                        itemBuilder: (BuildContext context, int index){
                          return select==1? sheets[index]: select==2? glass[index]: select==3? hinges[index]:lock[index];
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          Row(
                            children: [
                              RawMaterialButton(
                                onPressed: (){
                                  // showDialog(
                                  //     context: context,
                                  //     builder: (context){
                                  //       return
                                  //         Stack(
                                  //           children: [
                                  //             AlertDialog(title: Text('DIMENSIONS'),
                                  //               content: Container(
                                  //                 height:200,
                                  //                 width: 120,
                                  //                 child: Column(
                                  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //                   children: [
                                  //                     Row(
                                  //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //                       children: [
                                  //                         Expanded(
                                  //                           child: ConstrainedBox(
                                  //                             constraints:BoxConstraints(
                                  //                               minHeight: 35, maxHeight: 35,
                                  //                             ),
                                  //                             child: TextField(
                                  //                               decoration: InputDecoration(
                                  //                                   border: InputBorder.none,
                                  //                                   filled: true,
                                  //                                   fillColor: Colors.black12
                                  //                               ),
                                  //                             ),
                                  //                           ),
                                  //                         ),
                                  //                         SizedBox(width: 10,),
                                  //                         Text('X'),
                                  //                         SizedBox(width: 10,),
                                  //                         Expanded(
                                  //                           child: ConstrainedBox(
                                  //                             constraints:BoxConstraints(
                                  //                               minHeight: 35, maxHeight: 35,
                                  //                             ),
                                  //                             child: TextField(
                                  //                               decoration: InputDecoration(
                                  //                                   border: InputBorder.none,
                                  //                                   filled: true,
                                  //                                   fillColor: Colors.black12
                                  //                               ),
                                  //                             ),
                                  //                           ),
                                  //                         ),
                                  //                         SizedBox(width: 10,),
                                  //                         Text('X'),
                                  //                         SizedBox(width: 10,),
                                  //                         Expanded(
                                  //                           child: ConstrainedBox(
                                  //                             constraints:BoxConstraints(
                                  //                               minHeight: 35, maxHeight: 35,
                                  //                             ),
                                  //                             child: TextField(
                                  //                               decoration: InputDecoration(
                                  //                                   border: InputBorder.none,
                                  //                                   filled: true,
                                  //                                   fillColor: Colors.black12
                                  //                               ),
                                  //                             ),
                                  //                           ),
                                  //                         ),
                                  //                       ],
                                  //                     ),
                                  //                     Row(
                                  //                       mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                  //                       children: [
                                  //                         Text('Quantity'),
                                  //                         SizedBox(width: 10,),
                                  //                         // RawMaterialButton(
                                  //                         //   onPressed: (){
                                  //                         //     setState(() {
                                  //                         //       try{
                                  //                         //         if(textEditingController1.text!='')
                                  //                         //         {textEditingController1.text=(int.parse(textEditingController1.text)+1).toString();};
                                  //                         //         print((int.parse(textEditingController1.text)+1));
                                  //                         //       }
                                  //                         //       catch(e){
                                  //                         //         AlertDialog(
                                  //                         //           title: e,
                                  //                         //         );
                                  //                         //       }
                                  //                         //     });
                                  //                         //
                                  //                         //   },
                                  //                         //   fillColor: Colors.black26,
                                  //                         //   shape: RoundedRectangleBorder(
                                  //                         //     borderRadius: BorderRadius.circular(5.0),
                                  //                         //   ),
                                  //                         //   constraints: BoxConstraints(
                                  //                         //       minHeight: 35,
                                  //                         //       minWidth: 35
                                  //                         //   ),
                                  //                         //   child: Icon(Icons.add),
                                  //                         // ),
                                  //
                                  //                         Expanded(
                                  //                           child: ConstrainedBox(
                                  //                             constraints:BoxConstraints(
                                  //                               minHeight: 35,  maxHeight: 35,
                                  //                             ),
                                  //                             child: TextFormField(
                                  //                               controller: textEditingController1,
                                  //                               keyboardType:TextInputType.phone ,
                                  //                               decoration: InputDecoration(
                                  //                                   border:  OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none,color: Colors.black12),borderRadius: BorderRadius.circular(5)),
                                  //                                   filled: true,
                                  //                                   fillColor: Colors.black12
                                  //                               ),
                                  //                             ),
                                  //                           ),
                                  //                         ),
                                  //
                                  //                         // RawMaterialButton(
                                  //                         //   onPressed: (){
                                  //                         // setState(() {
                                  //                         //   try{
                                  //                         //     if(textEditingController1.text!='1' && textEditingController1.text!='')
                                  //                         //     {textEditingController1.text=(int.parse(textEditingController1.text)-1).toString();};
                                  //                         //   }
                                  //                         //   catch(e){
                                  //                         //     AlertDialog(
                                  //                         //       title: e,
                                  //                         //     );
                                  //                         //   }
                                  //                         // });
                                  //                         //   },
                                  //                         //   fillColor: Colors.black26,
                                  //                         //   shape: RoundedRectangleBorder(
                                  //                         //     borderRadius: BorderRadius.circular(5.0),
                                  //                         //   ),
                                  //                         //   constraints: BoxConstraints(
                                  //                         //       minHeight: 35,
                                  //                         //       minWidth: 35
                                  //                         //   ),
                                  //                         //   child: Icon(Icons.remove),
                                  //                         // ),
                                  //                       ],),
                                  //                     Row(
                                  //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //                       children: [
                                  //                         RaisedButton(
                                  //                           shape:RoundedRectangleBorder(
                                  //                             borderRadius: BorderRadius.circular(20.0),
                                  //                           ),
                                  //                           child: Text("Back"),
                                  //                           onPressed: (){Navigator.of(context).pop();},
                                  //                         ),
                                  //                         RaisedButton(
                                  //                           shape:RoundedRectangleBorder(
                                  //                             borderRadius: BorderRadius.circular(20.0),
                                  //                           ),
                                  //                           child: Text("Submit"),
                                  //                           onPressed: (){},
                                  //                         )
                                  //                       ],
                                  //                     )
                                  //                   ],
                                  //                 ),
                                  //               ),
                                  //             ),
                                  //           ],
                                  //         );
                                  //     }
                                  // );
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
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Lock extends StatefulWidget {
  @override
  _LockState createState() => _LockState();
}

class _LockState extends State<Lock> {
  var srno=0;
  var total = 0;

  @override
  Widget build(BuildContext context) {
    textEditingController1.text='';
    return  Expanded(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(srno.toString(),
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                    Text('Sr.No.' ,style: TextStyle(
                      fontSize: 20,

                    ),)
                  ],
                ),
                Column(
                  children: [
                    Text(total.toString(),
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                    Text('Total' ,style: TextStyle(
                      fontSize: 20,

                    ),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
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
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: select==1? sheets.length: select==2? glass.length : select==3? hinges.length:lock.length,
                        itemBuilder: (BuildContext context, int index){
                          return select==1? sheets[index]: select==2? glass[index]: select==3? hinges[index]:lock[index];
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          Row(
                            children: [
                              RawMaterialButton(
                                onPressed: (){
                                  // showDialog(
                                  //     context: context,
                                  //     builder: (context){
                                  //       return
                                  //         Stack(
                                  //           children: [
                                  //             AlertDialog(title: Text('DIMENSIONS'),
                                  //               content: Container(
                                  //                 height:200,
                                  //                 width: 120,
                                  //                 child: Column(
                                  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //                   children: [
                                  //                     Row(
                                  //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //                       children: [
                                  //                         Expanded(
                                  //                           child: ConstrainedBox(
                                  //                             constraints:BoxConstraints(
                                  //                               minHeight: 35, maxHeight: 35,
                                  //                             ),
                                  //                             child: TextField(
                                  //                               decoration: InputDecoration(
                                  //                                   border: InputBorder.none,
                                  //                                   filled: true,
                                  //                                   fillColor: Colors.black12
                                  //                               ),
                                  //                             ),
                                  //                           ),
                                  //                         ),
                                  //                         SizedBox(width: 10,),
                                  //                         Text('X'),
                                  //                         SizedBox(width: 10,),
                                  //                         Expanded(
                                  //                           child: ConstrainedBox(
                                  //                             constraints:BoxConstraints(
                                  //                               minHeight: 35, maxHeight: 35,
                                  //                             ),
                                  //                             child: TextField(
                                  //                               decoration: InputDecoration(
                                  //                                   border: InputBorder.none,
                                  //                                   filled: true,
                                  //                                   fillColor: Colors.black12
                                  //                               ),
                                  //                             ),
                                  //                           ),
                                  //                         ),
                                  //                         SizedBox(width: 10,),
                                  //                         Text('X'),
                                  //                         SizedBox(width: 10,),
                                  //                         Expanded(
                                  //                           child: ConstrainedBox(
                                  //                             constraints:BoxConstraints(
                                  //                               minHeight: 35, maxHeight: 35,
                                  //                             ),
                                  //                             child: TextField(
                                  //                               decoration: InputDecoration(
                                  //                                   border: InputBorder.none,
                                  //                                   filled: true,
                                  //                                   fillColor: Colors.black12
                                  //                               ),
                                  //                             ),
                                  //                           ),
                                  //                         ),
                                  //                       ],
                                  //                     ),
                                  //                     Row(
                                  //                       mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                  //                       children: [
                                  //                         Text('Quantity'),
                                  //                         SizedBox(width: 10,),
                                  //                         // RawMaterialButton(
                                  //                         //   onPressed: (){
                                  //                         //     setState(() {
                                  //                         //       try{
                                  //                         //         if(textEditingController1.text!='')
                                  //                         //         {textEditingController1.text=(int.parse(textEditingController1.text)+1).toString();};
                                  //                         //         print((int.parse(textEditingController1.text)+1));
                                  //                         //       }
                                  //                         //       catch(e){
                                  //                         //         AlertDialog(
                                  //                         //           title: e,
                                  //                         //         );
                                  //                         //       }
                                  //                         //     });
                                  //                         //
                                  //                         //   },
                                  //                         //   fillColor: Colors.black26,
                                  //                         //   shape: RoundedRectangleBorder(
                                  //                         //     borderRadius: BorderRadius.circular(5.0),
                                  //                         //   ),
                                  //                         //   constraints: BoxConstraints(
                                  //                         //       minHeight: 35,
                                  //                         //       minWidth: 35
                                  //                         //   ),
                                  //                         //   child: Icon(Icons.add),
                                  //                         // ),
                                  //
                                  //                         Expanded(
                                  //                           child: ConstrainedBox(
                                  //                             constraints:BoxConstraints(
                                  //                               minHeight: 35,  maxHeight: 35,
                                  //                             ),
                                  //                             child: TextFormField(
                                  //                               controller: textEditingController1,
                                  //                               keyboardType:TextInputType.phone ,
                                  //                               decoration: InputDecoration(
                                  //                                   border:  OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none,color: Colors.black12),borderRadius: BorderRadius.circular(5)),
                                  //                                   filled: true,
                                  //                                   fillColor: Colors.black12
                                  //                               ),
                                  //                             ),
                                  //                           ),
                                  //                         ),
                                  //
                                  //                         // RawMaterialButton(
                                  //                         //   onPressed: (){
                                  //                         // setState(() {
                                  //                         //   try{
                                  //                         //     if(textEditingController1.text!='1' && textEditingController1.text!='')
                                  //                         //     {textEditingController1.text=(int.parse(textEditingController1.text)-1).toString();};
                                  //                         //   }
                                  //                         //   catch(e){
                                  //                         //     AlertDialog(
                                  //                         //       title: e,
                                  //                         //     );
                                  //                         //   }
                                  //                         // });
                                  //                         //   },
                                  //                         //   fillColor: Colors.black26,
                                  //                         //   shape: RoundedRectangleBorder(
                                  //                         //     borderRadius: BorderRadius.circular(5.0),
                                  //                         //   ),
                                  //                         //   constraints: BoxConstraints(
                                  //                         //       minHeight: 35,
                                  //                         //       minWidth: 35
                                  //                         //   ),
                                  //                         //   child: Icon(Icons.remove),
                                  //                         // ),
                                  //                       ],),
                                  //                     Row(
                                  //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  //                       children: [
                                  //                         RaisedButton(
                                  //                           shape:RoundedRectangleBorder(
                                  //                             borderRadius: BorderRadius.circular(20.0),
                                  //                           ),
                                  //                           child: Text("Back"),
                                  //                           onPressed: (){Navigator.of(context).pop();},
                                  //                         ),
                                  //                         RaisedButton(
                                  //                           shape:RoundedRectangleBorder(
                                  //                             borderRadius: BorderRadius.circular(20.0),
                                  //                           ),
                                  //                           child: Text("Submit"),
                                  //                           onPressed: (){},
                                  //                         )
                                  //                       ],
                                  //                     )
                                  //                   ],
                                  //                 ),
                                  //               ),
                                  //             ),
                                  //           ],
                                  //         );
                                  //     }
                                  // );
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
