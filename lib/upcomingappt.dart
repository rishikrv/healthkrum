import 'package:flutter/material.dart';

class UpcomingAppts extends StatefulWidget {
  @override
  _UpcomingApptsState createState() => _UpcomingApptsState();
}

class _UpcomingApptsState extends State<UpcomingAppts> {


  @override
  Widget build(BuildContext context) {
    var id = [
      "11be45",
      "109e45",
      "209B48",
      "980065",
    ];

    var eventName = [
      "XXXXXXX",
      "XXXXXXX",
      "XXXXXXX",
      "XXXXXXX",

    ];

    var location = [
      "Delhi",
      "Bhopal",
      "Harayana",
      "Bhopal",

    ];

    var startingDate = [
      "12/05/20XX",
      "12/05/20XX",
      "12/05/20XX",
      "12/05/20XX",

    ];

    var lastDate = [
      "13/08/20XX",
      "13/08/20XX",
      "13/08/20XX",
      "13/08/20XX",

    ];

    var price = [
      "3738",
      "5600",
      "1900",
      "6985",

    ];

    var details = [
      "XXXXXXX",
      "XXXXXXX",
      "XXXXXXX",
      "XXXXXXX",

    ];

    var postBy = [
      "XXXXXXX",
      "XXXXXXX",
      "XXXXXXX",
      "XXXXXXX",

    ];

    var showEvent = [
      "XXXXXXX",
      "XXXXXXX",
      "XXXXXXX",
      "XXXXXXX",

    ];

    var slot = [
     "2",
      "2",
      "2",
      "2"
    ];

    var slotLeft = [
      "1",
      "1",
      "1",
      "1"
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 13.0, right: 16.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget> [
                          Text(
                            "id:"+id[position],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),


                          ),
                          SizedBox(height: 10,),
                          Text(
                            "location:\n"+location[position],
                            style: TextStyle(
                              color: Colors.teal[500],
                              fontSize: 14.0,
                            ),


                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Event Name:\n"+eventName[position],
                            style: TextStyle(

                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Post By:\n"+postBy[position],
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
                           "Slots:"+ slot[position],
                            style: TextStyle(
                            color: Colors.teal,
                                fontSize: 16,

                            ),


                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Slots Left: "+ slotLeft[position],
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold
                            ),


                          ),
                          SizedBox(height: 10,),
                        Text(
                         "Price(Rs):\n"+ price[position],
                          style: TextStyle(

                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                          ),


                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Starting Date:\n"+startingDate[position],
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
                            "Last Booking Date:\n"+ lastDate[position],
                            style: TextStyle(

                                fontSize: 14.0,

                            ),


                          ),
                          SizedBox(height: 10,),

                          Text(
                            "Details:\n"+ details[position],
                            style: TextStyle(

                              fontSize: 14.0,

                            ),


                          ),

                          SizedBox(height: 10,),

                          Text(
                            "Show Event:\n"+ showEvent[position],
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


              Card(
                color: Colors.red[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: FlatButton(

                    splashColor: Colors.red,
                    onPressed: ()=>{},

                    child: Text("Cancel")),
              ),
SizedBox(height: 5,),
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
        itemCount: price.length,
      ),
    );
  }
}

