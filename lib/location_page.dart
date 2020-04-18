import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthkrum/medico_login_screen.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  TextEditingController _cityController;

  var cityArray = [
    "Hyderabad",
    "Chennai",
    "Bangalore",
    "Pune",
    "Chandigarh",
    "Visakhapatnam",
    "Bhubaneshwar",
    "New Delhi",
    "Nagpur",
    "Lucknow",
    "Bhopal",
    "Kolkata",
    "Trichy",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () 
        {
          print("Moving on to next page");
          Navigator.push(context, MaterialPageRoute(
            builder: (_) => MedicoLoginScreen()
          ) );
        },
        backgroundColor: Color(0XFF31B4B8), // The blue color you see
        child: Icon(Icons.subdirectory_arrow_right),
      ),
      backgroundColor: Color(0XFFFAFAFA),  // A slightly darker shade of white you see of background
        body: Stack(
      children: <Widget>[
        // The containers in the background
        new Column(
          children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.height * .25,
              decoration: BoxDecoration(
                  color: Color(0XFF31B4B8),  // The blue color you see
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0))),
              child: Row(
                children: <Widget>[
                  Icon(Icons.close),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Select your city",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          letterSpacing: .5,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: new Container(
                  child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.my_location),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Use current location',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              letterSpacing: .5,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Expanded(
                      child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24.0),
                            topRight: Radius.circular(24.0),
                          ),
                        ),
                        child: ListView.builder(
                          itemCount: cityArray.length,
                          itemBuilder: (_, i) {
                            return CityTile(cityName: cityArray[i]);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            )
          ],
        ),
        // The card widget with top padding,
        // incase if you wanted bottom padding to work,
        // set the `alignment` of container to Alignment.bottomCenter
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .20,
              right: 20.0,
              left: 20.0),
          child: new Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24.0),
              bottomRight: Radius.circular(24.0),
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            )),
            color: Colors.white,
            elevation: 6.0,
            child: TextField(
              onChanged: (value) {
                // Do something here with the entered text
              },
              controller: _cityController,
              decoration: InputDecoration(
                  focusColor: Colors.white,
                  hintText: "Search here",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24.0)))),
            ),
          ),
        )
      ],
    ));
  }
}

class CityTile extends StatelessWidget {
  final String cityName;
  CityTile({@required this.cityName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 10.0),
          child: ListTile(
            title: Text(cityName, style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              //color: Color(0xFFC4C4C7), 
                              color: Colors.black45,
                              letterSpacing: .5,
                              fontSize: 14,
                            ),
                          ),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Container(
            height: 0.3,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

//C4C4C7
// The implementation with stack
// Stack(
//   children: <Widget>[
//     Container(
//       height: MediaQuery.of(context).size.height * 0.25,
//       decoration: BoxDecoration(
//           color: Color(0XFF31B4B8),
//           borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(24.0),
//               bottomRight: Radius.circular(24.0))),
//     ),
//     Container(
//       alignment: Alignment.topLeft,
//       margin: EdgeInsets.only(top: 50),
//       child: Row(
//         children: <Widget>[
//           Icon(Icons.close),
//           SizedBox(
//             width: 10.0,
//           ),
//           Text(
//             "Select your city",
//             style: GoogleFonts.lato(
//               textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
//             ),
//           )
//         ],
//       ),
//     ),
//   ],
// ),
