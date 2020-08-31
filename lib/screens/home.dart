import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelappui/widgets/widgets.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  String mainImage = 'https://www.indus.travel/aviator/psist/uploads/2018/07/most-visited-places-India-by-foreign-tourists.jpg';

  String avatar = 'https://i1.pngguru.com/preview/137/834/449/cartoon-cartoon-character-avatar-drawing-film-ecommerce-facial-expression-png-clipart.jpg';

  String tajMahal = 'https://thumbs-prod.si-cdn.com/rtkp3HcECC3xlPiOGvSnR1M5Rag=/fit-in/1600x0/filters:focal(1471x1061:1472x1062)/https://public-media.si-cdn.com/filer/b6/30/b630b48b-7344-4661-9264-186b70531bdc/istock-478831658.jpg';

  String redFort = 'https://bsmedia.business-standard.com/_media/bs/img/article/2018-04/27/full/1524814612-1299.jpg';

  String indiaGate = 'https://www.nativeplanet.com/img/2015/06/22-1434948583-india-gate.jpg';

  String goldenTemple = 'https://www.planetware.com/photos-large/IND/india-top-attractions-harmandir-sahib.jpg';


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [

              Container(
                height: MediaQuery.of(context).size.height*0.50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [
                   Image(
                      image: NetworkImage(tajMahal),
                     height: MediaQuery.of(context).size.height*0.50,
                     fit: BoxFit.cover,
                    ),

                  ],
                ),
              ),
              Opacity(
                opacity:0.6,

                child: Container(
                  color: Colors.pink[500],
                  height: MediaQuery.of(context).size.height*0.50,
                ),
              ),

              Container(
//            padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10,top: 10),
                            child: Icon(Icons.menu,color: Colors.white,)),
                        Padding(
                          padding: EdgeInsets.only(right: 10,top: 10),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(avatar),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('The best tourist \nplace in India',style:
                            TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),


                    ),

                    Container(
                      padding: EdgeInsets.only(left: 40, top: 30),
                      alignment: Alignment.centerLeft,
                      child: Text('Top 100 places to visit in India',style:
                      TextStyle(
                          color: Colors.white,
                          fontSize: 12
                        ),
                      ),
                    ),

                    SizedBox(height: 100,),


                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                             CardWidget(imageUrl: tajMahal,name: "Taj Mahal",tag: "Taj Mahal is Made by ShahJahan",),
                             CardWidget(imageUrl: redFort,name:"Red Fort",tag:'Also Known as Lal Killa in Delhi'),
                             CardWidget(imageUrl:indiaGate,name:"India Gate",tag:"It is located in Delhi and it is very Famous"),
                             CardWidget(imageUrl: goldenTemple,name:"Golden Temple",tag: "Famous Sikh Temple made of Gold",),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: 70,
          color: Colors.white,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  color: Colors.white,
                  alignment: Alignment.center,
                  onPressed: (){},
                  icon: Icon(
                    Icons.home
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  color: Colors.white,
                  alignment: Alignment.center,
                  onPressed: (){},
                  icon: Icon(
                      Icons.location_on
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  color: Colors.white,
                  alignment: Alignment.topCenter,
                  onPressed: (){},
                  icon: Icon(
                      Icons.search
                  ),
                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}
