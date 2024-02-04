import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text("My'P",style: TextStyle(fontSize: 40,color: Colors.white),),
      ),

      body: PageView(
        controller: _pageController,
        onPageChanged: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Container(
            color: Colors.pink,
            child: Center(
              child: Text(
                "Page one",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),

          Container(
            child:Column(
              children: [
                // _itemList(message: "Hi"),
              ],
            )
          ),

          Container(
            child: Center(
              child: Text(
                "Welcome to Cinema",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),

          Container(
            color: Colors.orange,
            child: Center(
              child: Text(
                "Notification",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video),label: "Video"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: (int index){
          setState(() {
            _selectedIndex= index;
            _pageController!.animateToPage(
                index,
                duration: Duration(milliseconds: 200),
                curve:Curves.easeIn
            );
          });
        },
      ),

      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              color: Colors.blueAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: Text("A",style: TextStyle(fontSize: 30,color: Colors.blueAccent),),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),

                  ),
                  Text("Abdusattor Yaminjonov",style: TextStyle(color: Colors.white,fontSize: 20),),
                  Text("abdusattoryaminjonov@gmail.com",style: TextStyle(color: Colors.white,fontSize: 15),),
                ],
              ),
            ),
            MaterialButton(
              height: 60,
              child: Row(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.black54,
                    size: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child:Text("Home",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54
                    ),
                    ),
                  )

                ],
              ),
              onPressed: (){

              },
            ),
            MaterialButton(
              height: 60,
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.black54,
                    size: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child:Text("Profile",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54
                    ),
                    ),
                  )

                ],
              ),
              onPressed: (){

              },
            ),
            MaterialButton(
              height: 60,
              child: Row(
                children: [
                  Icon(
                    Icons.people,
                    color: Colors.black54,
                    size: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child:Text("Aboutus",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54
                    ),
                    ),
                  )

                ],
              ),
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
  Widget _itemList({message,image}){
    return Container(
      height: 60,
      color: Colors.orange,
      child: Row(
        children: [
          Image(
            image: AssetImage(image),
          ),
          Expanded(
            child: Text(
              message,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            width: 30,
            child: Icon(
              Icons.navigate_next,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
