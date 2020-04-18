import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registeration extends StatefulWidget {
  @override
  _PatientPresState createState() => _PatientPresState();
}

class _PatientPresState extends State<Registeration> {

  Widget appBarTitle = new Text("Registeration");
  Icon actionIcon = new Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    var SNo = [
      "11be45",

    ];

    var EmployeeName = [
      "Dakota Rice",

    ];

    var Email = [
      "abc@gmail.com",

    ];

    var Contact = [
      "9800XXXXXXX",

    ];

    var Age = [
      "34",

    ];

    var Gender = [
      "Male",
    ];

    var DOB = [
      "12/02/19XX",
    ];

    var EmployeeID = [
      "111XXX",
    ];

    var Dept = [
      "Medicine",
    ];

    var Branch = [
      "Branch Name",
    ];



    return Scaffold(
      appBar: AppBar(
        title: appBarTitle,
        centerTitle: true,
        actions: <Widget>[ new IconButton(icon: actionIcon,onPressed:(){
          setState(() {
            if ( this.actionIcon.icon == Icons.search){
              this.actionIcon = new Icon(Icons.close);
              this.appBarTitle = new TextField(
                style: new TextStyle(
                  color: Colors.white,

                ),
                decoration: new InputDecoration(
                    prefixIcon: new Icon(Icons.search,color: Colors.white),
                    hintText: "Search...",
                    hintStyle: new TextStyle(color: Colors.white)
                ),
              );}
            else {
              this.actionIcon = new Icon(Icons.search);
              this.appBarTitle = new Text("AppBar Title");
            }


          });
        } ,)],
        backgroundColor: Color(0xFF19A1B9),
      ),
      body: Column(
        children: <Widget>[

          RaisedButton(
            color: Color(0xFF19A1B9),
            highlightColor: Color(0xFF19A1B9),
            splashColor: Color(0xFF19A1B9),
            elevation: 10.0,
            onPressed: ()=>{},
            child: Text(" ADD NEW EMPLOYEE",style: TextStyle(color: Colors.white,fontSize: 14),),
          ),
          SizedBox(height: 5,),
          RaisedButton(
            color: Colors.blueAccent,
            highlightColor: Colors.blueAccent,
            splashColor: Colors.blueAccent,
            elevation: 10.0,
            onPressed: ()=>{},
            child: Text(" ADD EMPLOYEE(CSV)",style: TextStyle(color: Colors.white,fontSize: 14),),
          ),
          SizedBox(height: 6,),

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, position) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, top: 8.0, right: 16.0, bottom: 8.0),
                      child: Expanded(
                        child:Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget> [
                                    Text(
                                      "SNo: "+SNo[position],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                      ),


                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      "Employee Name:\n"+EmployeeName[position],
                                      style: TextStyle(
                                        color: Color(0xFF19A1B9),
                                        fontSize: 14.0,
                                      ),


                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      "Email:\n"+Email[position],
                                      style: TextStyle(

                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      "Contact:\n"+Contact[position],
                                      style: TextStyle(

                                          fontSize: 14,
                                          color: Colors.red

                                      ),
                                    ),


                                  ]
                              ),
                            ),
                            SizedBox(width: 20,),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: <Widget>[
                                  Text(
                                    "Age:"+ Age[position],
                                    style: TextStyle(
                                      color: Color(0xFF19A1B9),
                                      fontSize: 14,

                                    ),


                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Gender: "+ Gender[position],
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold
                                    ),


                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "DOB: "+ DOB[position],
                                    style: TextStyle(

                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold
                                    ),


                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Employee ID:\n"+EmployeeID[position],
                                    style: TextStyle(

                                      fontSize: 14,
                                    ),

                                  ),

                                  SizedBox(height: 10,),
                                ],

                              ),
                            ),


                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[

                                  Text(
                                    "Dept:\n"+ Dept[position],
                                    style: TextStyle(

                                      fontSize: 14.0,

                                    ),


                                  ),
                                  SizedBox(height: 10,),

                                  Text(
                                    "Branch:\n"+ Branch[position],
                                    style: TextStyle(

                                      fontSize: 14.0,

                                    ),


                                  ),

                                  SizedBox(height: 10,),




                                ],),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Divider(
                        height: 1.0,
                        color: Colors.grey,
                      ),
                    )
                  ],
                );
              },
              itemCount: SNo.length,
            ),
          ),
        ],
      ),
    );
  }
}
