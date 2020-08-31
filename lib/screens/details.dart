import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelappui/resources/image_linkes.dart';
import 'package:travelappui/widgets/widgets.dart';

class Details extends StatefulWidget {
   String imageUrl, name,tag;
   Details({this.imageUrl,this.name,this.tag});


  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.50,
                  child: Image(
                    fit: BoxFit.fill,
                    image: NetworkImage(widget.imageUrl),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                        ],
                      ),

                      Container(
                        child: Text(
                          'the red fort is a historic fort in the city of delhi in India. It was the main residence of the emperors of the mughal dynasty for nearly 200 years until 1856.',
                          style: TextStyle(
                              color: Colors.black,
                            fontSize:16
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),

                      Row(

                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.45,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Owner',
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                 ),
                                ),
                                SizedBox(height: 5,),
                                Text('Mughal Empire\n(1639-1857)'),

                              ],
                            ),
                          ),

                          DetailsWidget(title: 'architectural style',des1: 'Indo-islamic',des2: 'Mughal',),

                        ],
                      ),

                      SizedBox(height: 30,),

                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width*0.45,
                              child: DetailsWidget(title:'location' , des1:'Delhi',des2: 'India',)),
                          DetailsWidget(title: 'build',des1: '1800',des2: 'Mughal',)
                        ],
                      )


                    ],
                  )
                )

              ],
            ),

            Positioned(
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
            )




          ],
        ),

        bottomSheet: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: 70,
          child:RaisedButton(
            onPressed: (){},
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            color: Colors.pinkAccent,
            child: Text(
              'Know More',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),

          )
        ),

      ),

    );
  }
}
