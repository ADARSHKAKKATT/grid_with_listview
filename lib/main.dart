import 'package:flutter/material.dart';

void main() {
  runApp(const Task());
}

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  
  List l=[Colors.orange,Colors.green,Colors.blueAccent,Colors.cyan,Colors.pink];
  List l1=[Icons.file_copy,Icons.engineering,Icons.emoji_food_beverage_rounded,Icons.sports_gymnastics,Icons.wallet];
  List l2=["File Manager","Exercise Tips","Food Recipe","Gym","e-wallet"];
  List l3=["Theme 1 Screens","Theme 2 Screens","Theme 3 Screens","Theme 4 Screens","Theme 5 Screens",];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("All In One UI Kit",
                  style: TextStyle(
                      color: Colors.black,
                  fontWeight: FontWeight.bold)
              ),
              Icon(Icons.toggle_off_outlined,
              size: 50,)
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1/.6,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.cyan,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone_android,
                            size: 60,
                            color: Colors.white,),
                            SizedBox(height: 10,),
                            Text("Default Theme",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.apps,
                              size: 60,
                              color: Colors.white,),
                            SizedBox(height: 10,),
                            Text("Full Apps",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.sports_basketball,
                              size: 60,
                              color: Colors.white,),
                            SizedBox(height: 10,),
                            Text("Integration",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.dashboard,
                              size: 60,
                              color: Colors.white,),
                            SizedBox(height: 10,),
                            Text("Dashboard",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text("Themes",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: l1.length,
                    itemBuilder: (BuildContext context, int i){
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Card(
                          color: Colors.white24,
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                color: l[i],
                                child: Icon(l1[i]),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(l2[i],
                                      style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    Text(l3[i])
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: l[i],
                                      child: Icon(Icons.arrow_forward_ios,
                                      color: Colors.white,),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );

                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
