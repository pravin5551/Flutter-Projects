import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(

    home: MyApp(),

      theme: ThemeData(
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        ),
        backgroundColor: Colors.white
      ),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: <Widget>[

          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              setState(() {});
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              Container(
                child:Row(
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Column(
                              children: [
                                Text("Hello,",style: TextStyle(fontSize: 25), ),
                                SizedBox(
                                  width: 5,
                                  height: 5,
                                ),
                                Text("   Pravin",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))

                              ],
                            ),
                          ),
                        ) ],
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Card(
                        color: Colors.white54,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.blueAccent,
                          ),
                          onPressed: () {
                            setState(() {});
                          },
                        ),
                      )
                    )
                  ],
                )
              ),
              SizedBox(
                width: 5,
                height: 15,
              ),
              Card(
                // elevation: 50,
                // shadowColor: Colors.white,
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(25)),
                ),

                child: SizedBox(
                  width: 350,
                  height: 290,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text("Outcome", style: TextStyle(fontSize: 20,color: Colors.white),),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("R: 12,560,00", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),

                                  ],
                                ),
                                Spacer(),
                                CircleAvatar(
                                  backgroundColor: Colors.purpleAccent,
                                )
                              ],
                            )
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Lottie.asset('assets/dataaa.json'),
                      ],//SizedBox

                    ), //Column
                  ), //Padding
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Today", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black12),),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 15),
                child: Row(
                  children: [
                    Card(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      child: Container(

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("images/shirt.png", width: 30,height: 30,),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Nike Store", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,
                    fontSize: 20),),
                    Spacer(),
                    Align(
                      alignment: Alignment.center,
                        child: Text("R: 7,34,00"),
                    ),

                  ],
                ),
              ),
              Divider(
                height: 5,
                color: Colors.grey,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("8 April", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black12),),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 15),
                child: Row(
                  children: [
                    Card(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      child: Container(

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("images/iphone.png", width: 30,height: 30,),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("iPhone", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,
                        fontSize: 20),),
                    Spacer(),
                    Align(
                      alignment: Alignment.center,
                      child: Text("R: 1,11,34,00"),
                    ),

                  ],

                ),
              ),
            ],
          ),

        ],
      ),

     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Colors.red,
       currentIndex: 0,
       items: [
         BottomNavigationBarItem(
             icon: Icon(Icons.explore, color:Colors.purple),
             title: Text('Explore', style: TextStyle(color: Colors.purple),),
           backgroundColor: Colors.white,
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.money,color:Colors.purple),
           title: Text('Budget', style: TextStyle(color: Colors.purple),),
           backgroundColor: Colors.white,
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.home,color:Colors.purple),
           title: Text('Home', style: TextStyle(color: Colors.purple),),
           backgroundColor: Colors.white,
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.map, color: Colors.purple,),
           title: Text('Graph', style: TextStyle(color: Colors.purple),),
           backgroundColor: Colors.white,
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person,color:Colors.purple),
           title: Text('Profile', style: TextStyle(color: Colors.purple),),
           backgroundColor: Colors.white,
         )
       ],
     ),

    );
  }
}

