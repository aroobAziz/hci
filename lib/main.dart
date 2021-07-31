import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loney/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
theme: ThemeData(
  primaryColor: Colors.pinkAccent
),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key,}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
    double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
   title:  Text(
     'HCI',
     style: TextStyle(fontWeight: FontWeight.bold),
   ),
          centerTitle: true,
      ),
      body: Container(
        height: deviceHeight(context),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topLeft,
           end: Alignment.bottomRight,
           stops: [

             0.4,
             0.7,
             1,

           ],
           colors: [
             Color(0xFFEE7C7C),
             Colors.pinkAccent,
             Colors.white,
           ],
         ),
        ),
        child: SingleChildScrollView(

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding:  EdgeInsets.only(top:deviceHeight(context) * 0.10,),
                child: Icon(Icons.person,size: 100,),),
                SizedBox(height: deviceHeight(context)*0.10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(

                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.password),

                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:deviceHeight(context)* 0.05),
                  child: SizedBox(
                    width: 120,

                    child: InkWell(
                      child: TextButton(
                         onPressed:  () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => Home(),
                          ));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.white,

                          shape:
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:5,
                ),
                Text("Log in With", textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,


                    ),),
                SizedBox(
                  height: 5,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
Image.asset('assets/facebook.png',
  width: 20,
  height: 20,
),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset('assets/google.png',
                      width: 20,
                      height: 20,),


                  ],
                ),


                Padding(
                  padding:  EdgeInsets.only(top: deviceHeight(context)*0.05,right:deviceWidth(context) *0.05),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(onPressed: (){},child: Icon(Icons.add,color: Colors.black,size: 35,),

                        backgroundColor:Color(0xFFEE7C7C) ,),
                    ],
                  ),
                )
              ],
            ),

        ),

      ),
    );
  }
}
