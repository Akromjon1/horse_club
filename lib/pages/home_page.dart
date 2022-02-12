import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
static final String id = ' home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horse Club", style: TextStyle(color: Colors.deepOrange[800], fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, size: 30, color: Colors.black,),
        ),
        actions: [
          Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Icon(Icons.search, size: 25, color: Colors.black,),
            )
          ),
          SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Text('Riding courses', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),

              // #courses
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(top: 10, bottom: 10),
              height: 150,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 10,),
                  makeCourse(
                    image: 'assets/images/ic_beginner.jpg',
                    courseName: "Beginner",
                  ),
                  makeCourse(
                    image: 'assets/images/ic_image3.jpg',
                    courseName: "Adults",
                  ),
                  makeCourse(
                    image: 'assets/images/ic_image2.jpg',
                    courseName: "Sport Class",
                  ),
                ],
              ),

            ),
            // #services
            Container(
              width: MediaQuery.of(context).size.width,

              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Text("Our services", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
                  makeService(
                    image: 'assets/images/ic_image4.jpg',
                    title: "Horse Tours",
                  ),
                  makeService(
                    image: 'assets/images/ic_image5.jpg',
                    title: "Grooming services",
                  ),
                  makeService(
                    image: 'assets/images/ic_image6.jpg',
                    title: "Horse Tours",
                  ),makeService(
                    image: 'assets/images/ic_image2.jpg',
                    title: "Horse Tours",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget makeCourse({image,courseName}){
    return Container(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 80,
          width: 80,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 2, color: Colors.deepOrange[800]!),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
              )

          ),
        ),
        SizedBox(height: 10,),
        Text(courseName),
      ],
    )
    );
  }
  Widget makeService({image, title}){
    return AspectRatio(aspectRatio: 2/ 1.3,
    child:  Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          )
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.3),
              Colors.black.withOpacity(.2),
            ]
          )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
      child: Align(
      alignment: Alignment.bottomLeft, child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),),
          Container(
            width: 40,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    colors: [
                      Colors.grey.withOpacity(.7),
                      Colors.grey.withOpacity(.7),
                    ]
                )
            ),
            child: Center(
              child: Icon(
                Icons.arrow_right_alt, color: Colors.white,),
            ),
          ),
        ],
      ),
      ),
    ),
      ),

    ),
    );
  }
}
