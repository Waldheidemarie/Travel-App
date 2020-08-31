import 'package:flutter/material.dart';
import 'package:travelappui/screens/details.dart';

class CardWidget extends StatelessWidget {
  String imageUrl,name,tag;
  CardWidget({this.imageUrl,this.name,this.tag});





  @override
  Widget build(BuildContext context) {
    return Container(

      width: 200,
      child: Column(
        children: [

          GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Details(imageUrl:imageUrl,name:name)
              ));
            },
            child: Card(
              shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                height:250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl),
                  ),
                ),
              ),
            ),
          ),

          //main Container ...
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(6),
            //main Column for the card...
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6,),
                Text(name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 6,),
                Text(tag),
                SizedBox(height: 6,),
                RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Details(imageUrl:imageUrl,name:name)
                    ));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  color: Colors.pinkAccent,
                  child: Text(
                    'Details',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class DetailsWidget extends StatelessWidget {
  String title,des1,des2;
  DetailsWidget({this.title,this.des1,this.des2});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5,),
        Text(des1),
        Text(des2),

      ],
    );
  }
}

