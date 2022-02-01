import 'package:flutter/material.dart';

import 'model.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int count=1;
double balandlik=double.infinity*0.1;
@override void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.restaurant,color: Colors.white,size: 30,),
        title: Text("FriendlyEats"),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child:Container(
              alignment: Alignment.center,
              height: 60,
              color: Colors.white,
              margin: EdgeInsets.only(top: 5,bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.filter_list,color: Colors.black,),
                  SizedBox(width: 10,),
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("All Categories",style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                      Text("By rating",style: TextStyle(color: Colors.grey),)
                    ],
                  )
                ],
              )

            )),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:MediaQuery.of(context).size.width>=600?4:1 ,
              mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
           itemCount: Foods().foods.length,
          itemBuilder: (context,index){
            return Container(
              padding: EdgeInsets.only(right: 20,left: 20),
              height:MediaQuery.of(context).size.height*0.3,
             width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 3,
                    child: Image(image: AssetImage(Foods().foods[index].image),
                    fit: BoxFit.cover,
                    height:MediaQuery.of(context).size.height*0.3,
                    width: MediaQuery.of(context).size.width*0.9,
                  ), ),
                  Expanded(flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(Foods().foods[index].name,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                          Text("\$\$\$",style: TextStyle(color: Colors.grey,fontSize: 25),)
                        ],),
                      SizedBox(height: 10,),
                      Row(children: [
                        Icon(Icons.star,color: Colors.yellow,size: 20,),
                        Icon(Icons.star,color: Colors.yellow,size: 20,),
                        Icon(Icons.star,color: Colors.yellow,size: 20,),
                        index%3==2? Icon(Icons.star,color: Colors.yellow,size: 20,):
                        Icon(Icons.star_half_sharp,color: Colors.yellow,size: 20,),
                       index%2==0? Icon(Icons.star_half_sharp,color: Colors.yellow,size: 20,):
                        Icon(Icons.star_border_outlined,color: Colors.yellow,size: 20,),
                      ],),
                      Text(Foods().foods[index].dicription,style: TextStyle(fontSize: 18,color: Colors.grey),),
                      Divider(height: 10,color: Colors.grey,)
                    ],
                  ))
                ],
              ),
            );
          }),

    );
  }
  

}
