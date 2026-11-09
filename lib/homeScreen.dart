import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});
  static const String routeName = "/Home_Screen" ;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
          backgroundColor: Colors.transparent,
          leadingWidth: 0,
          leading: Text(""),
          title: Text("Facebook" , style: TextStyle(
            fontSize: 30 ,
            fontWeight: .w800 ,
            color: Color(0xFF1877F2),
          )),
          actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               spacing: 12,
               children: [
                 Image.asset("assets/images/Plus.png" ,),
                 Image.asset("assets/images/Search.png" ,),
                 Image.asset("assets/images/Messenger.png" ,),
               ],
             ),
           ),
          ],

          bottom: TabBar(
            labelColor: Color(0xFF1877F2),
             indicatorSize: TabBarIndicatorSize.tab,
             indicatorColor: Color(0xFF1877F2),
              tabs: <Widget>[
            Tab(icon: ImageIcon(AssetImage("assets/images/Vector (2).png")),),
            Tab(icon: ImageIcon(AssetImage("assets/images/tv.png")),),
            Tab(icon: ImageIcon(AssetImage("assets/images/Store.png")),),
            Tab(icon: ImageIcon(AssetImage("assets/images/Profile.png")),),
            Tab(icon: ImageIcon(AssetImage("assets/images/Notification.png")),),
            Tab(icon: CircleAvatar(backgroundImage: AssetImage("assets/images/Ellipse 1 (1).png"),),),
          ]),

        ),

        body: SafeArea(child:SingleChildScrollView(
          child: Column(
            children: [
             TextFormField(
                decoration:InputDecoration(
                  hintText: "What’s in Your Mind?",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: .w500,
                    color: Color(0xFF898F9C)
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 40 ,),
                  prefixIcon:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(backgroundImage: AssetImage("assets/images/Ellipse 1 (1).png"),),
                  ) ,
          
                  suffixIcon:Padding(
                    padding: const EdgeInsets.all(16),
                    child: Image.asset("assets/images/photos.png"),
                  )
                ) ,
             ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    spacing: 16,
                    children: [
                      Image.asset("assets/images/mainStory.png" , width: 112,height: 178,),
                      Image.asset("assets/images/firstStory.png" , width: 112,height: 178,),
                      Image.asset("assets/images/secondStory.png" , width: 112,height: 178,),
                      Image.asset("assets/images/firstStory.png" , width: 112,height: 178,),
                      Image.asset("assets/images/secondStory.png" , width: 112,height: 178,),
                      Image.asset("assets/images/firstStory.png" , width: 112,height: 178,),
                      Image.asset("assets/images/secondStory.png" , width: 112,height: 178,),
                      Image.asset("assets/images/firstStory.png" , width: 112,height: 178,),
                      Image.asset("assets/images/secondStory.png" , width: 112,height: 178,),
                    ],
                  ),
                ),
              ),
              Divider(),
              Image.asset("assets/images/post.png"),
              Image.asset("assets/images/post.png"), Divider(),
              Image.asset("assets/images/post.png"),
          
            ],
          ),
        ) ),
      ),
    );
  }
}

