import 'package:flutter/material.dart';

class PastAppts extends StatefulWidget {
  @override
  _PastApptsState createState() => _PastApptsState();
}

class _PastApptsState extends State<PastAppts> {


  @override
  Widget build(BuildContext context) {
    var apptno = [
      "11be45",
      "109e45",
      "209B48",
      "980065",
    ];

    var docName = [
      "Dakota Rice",
      "Minerva Hooper",
      "Sage Rodriguez",
      "Philip Chaney",

    ];

    var location = [
      "Delhi",
      "Bhopal",
      "Harayana",
      "Bhopal",

    ];

    var lab = [
      "Lab-Name",
      "Lab-Name",
      "Lab-Name",
      "Lab-Name",

    ];

    var date = [
      "13/08/20XX",
      "13/08/20XX",
      "13/08/20XX",
      "13/08/20XX",

    ];

    var fee = [
      "3738",
      "5600",
      "1900",
      "6985",

    ];

    var cancel = [
      "Cupcake",
      "Donut",
      "Eclair",
      "Froyo",
      "Gingerbread",
      "Honeycomb",
    ];

    var note = [
      "Cupcake",
      "Donut",
      "Eclair",
      "Froyo",
      "Gingerbread",
      "Honeycomb",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("RecyclerView Flutter"),
      ),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget> [
                            Text(
                              apptno[position],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),


                            ),
                            SizedBox(height: 10,),
                            Text(
                              location[position],
                              style: TextStyle(
                                color: Colors.teal[500],
                                fontSize: 18.0,
                              ),


                            ),
                            SizedBox(height: 10,),
                            Text(
                              lab[position],
                              style: TextStyle(

                                fontSize: 16,
                              ),
                            ),


                          ]
                      ),
                    ),
                    SizedBox(width: 20,),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: <Widget>[
                          Text(
                            docName[position],
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold
                            ),


                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Rs "+ fee[position],
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),


                          ),
                          SizedBox(height: 10,),
                          Text(
                            date[position],
                            style: TextStyle(

                              fontSize: 16,
                            ),

                          ),
                        ],),
                    ),
                    SizedBox(width: 20,),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: <Widget>[

                          SizedBox(height: 30,),
                          Card(
                            color: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: FlatButton(

                                splashColor: Colors.teal,
                                onPressed: ()=>{},

                                child: Text("Feedback",style: TextStyle(color: Colors.white),)),
                          ),
                        ],),
                    )
                  ],
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
        itemCount: fee.length,
      ),
    );
  }
}

