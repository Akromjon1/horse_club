import 'package:animate_do/animate_do.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
class SplashPage extends StatefulWidget {
static final String id = 'splash_page';
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.jpg'),
            fit: BoxFit.cover,
          ),

        ),
       child: FadeInUp(
         duration: Duration(milliseconds: 300),
         child: Align(
           alignment: Alignment.bottomCenter,
           child: AspectRatio(
             aspectRatio: 2/1.1,
             child: Container(
               width: double.infinity,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   gradient: LinearGradient(
                       colors: [
                         Colors.grey.withOpacity(.3),
                         Colors.grey.withOpacity(.4),
                       ]
                   )
               ),
               child: Container(
                 padding: EdgeInsets.all(20),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       children: [
                         Text('Welcome to the best horse club',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),
                         Text('We are fully approved by the horse society as professional riding school',style: TextStyle(fontSize: 15, color: Colors.white),),
                       ],
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text('Join now',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                         GestureDetector(
                           onTap: (){
                             Navigator.pushNamed(context, HomePage.id);
                           },
                           child:  Container(
                             margin: EdgeInsets.only(bottom: 5, left: 10),
                             padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 gradient: LinearGradient(
                                     colors: [
                                       Colors.yellow.withOpacity(.7),
                                       Colors.orange.withOpacity(.7),
                                     ]
                                 )
                             ),
                             child: Icon(
                               Icons.arrow_right_alt,
                               color: Colors.white,

                             ),
                           ),
                         ),

                       ],
                     ),
                   ],
                 ),
               ),
             ),
           )
       ),
       ),
      ),
    );
  }
}
