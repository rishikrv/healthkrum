import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class SearchDoctor extends StatefulWidget {
  @override
  _SearchDoctorState createState() => _SearchDoctorState();
}

class _SearchDoctorState extends State<SearchDoctor> {
  List docName=["Dr. Alina James",
                  "Dr. Steve Robert",
                  "Dr. Selina Fig"];
  List docSpec=["B.Sc, MBBS, DDVL, MD-Dermitologist",
                  "B.Sc, MBBS, DDVL, ",
                    "B.Sc, MBBS, DDVL, MD-Dermitologist"];
  List rating=["4.2","3.6","3.0"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
            Image.asset('assets/back3.png',fit:BoxFit.fill,height: double.infinity,width: double.infinity,),
            SingleChildScrollView(
              child: Column( children: <Widget>[
                SizedBox(height: 35,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: <Widget>[
                    Stack(
                        children: <Widget>[
                          Image.asset('assets/Path1475.png',fit:BoxFit.fill,),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                            child: Image.asset('assets/logo2.png',fit:BoxFit.fill),
                          )
                        ]),
                    Spacer(),
                    Center(child: Container(margin: const EdgeInsets.only(right: 16),child: Text("Mumbai",style: TextStyle(color: Colors.white,fontSize: 11,),)))
                  ],
                  ),
                ),
                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(

                      children: <Widget>[Container(
                          width: 70,
                          height: 70.0,
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.scaleDown,
                                  image: new AssetImage("assets/nurse.png",)
                              )
                          )),
                      SizedBox(height: 8,),
                        Text("Doctor",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 8,),
                        Text("Search doctor\naround you",style: TextStyle(fontSize: 14),),
                      ]
                    ),

                    Column(

                        children: <Widget>[Container(
                            width: 70,
                            height: 70.0,
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.scaleDown,
                                    image: new AssetImage("assets/pill.png",)
                                )
                            )),
                          SizedBox(height: 8,),
                          Text("Medicine",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(height: 8,),
                          Text("Order Medicine\nto home",style: TextStyle(fontSize: 14),),
                        ]
                    ),
                    Column(

                        children: <Widget>[Container(
                            width: 70,
                            height: 70.0,
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.scaleDown,
                                    image: new AssetImage("assets/microscope.png",)
                                )
                            )),
                          SizedBox(height: 8,),
                          Text("Dignostic",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(height: 8,),
                          Text("Book test\nat doorstep",style: TextStyle(fontSize: 14),),
                        ]
                    ),
                  ],
                ),

                Container(
                  height: 220,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return new Image.asset(
                        "assets/searchdoc.png",
                        fit: BoxFit.fitWidth,
                      );
                    },
                    itemCount: 10,
                    viewportFraction: 0.8,
                    scale: 0.9,
                  ),
                ),

                SizedBox(height: 8,),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12.0,0,0,0),
                      child: Text("Doctors nearby you",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,0,12,0),
                      child: Text("See All",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blueAccent[700]),),
                    )

                  ],
                ),
                SizedBox(height: 12,),
                Container(
                  height: 250,

                  child: Swiper(
                    loop: false,
                    
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0,45,0,0),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(12.0,0,0,0),
                                child: Column(

                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[

                                    Text(docName[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                                    Text(docSpec[index],style: TextStyle(fontSize: 14),),

                                    Row(children: <Widget>[
                                      Image.asset("assets/star.png",fit: BoxFit.scaleDown,),
                                      SizedBox(width: 6,),
                                      Text(rating[index],style: TextStyle(fontSize: 14),)
                                    ],)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: CircleAvatar(
                              maxRadius: 40,
                              backgroundImage: AssetImage("assets/f1.png"),
                            ),
                          )
                        ],
                      );
                    },
                    itemCount: 3,
                    viewportFraction: .6,
                    scale: .7,

                  ),
                ),
                SizedBox(height: 15,),
                Container(
                    height: 250,
                    margin: EdgeInsets.fromLTRB(10,5,10,10),
                    child: Image.asset("assets/referencecode.png",fit: BoxFit.fill,))
              ],
              ),
            ),

          ]),
    );
  }
}

	
