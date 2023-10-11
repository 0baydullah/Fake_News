import 'package:flutter/material.dart';
import 'details.dart';
import 'newses.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String appBarTitle ="Fake News";
  int cIndex = 0;
  List<String> appTitle=["Fake News","False News"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(appTitle[cIndex]),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: newses.length,
        shrinkWrap: true,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:
                (_)=>Details(index)));
              },
              child: Card(
                color: Colors.red.shade50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              newses[index].headLine,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.red.shade800,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              newses[index].news,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "বুধবার, ১১ অক্টোবর ২০২৩",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(flex:1,child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.network(newses[index].image),
                    )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cIndex,
        onTap: (index){
          cIndex=index;
          setState((){});
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.free_breakfast_outlined),
            label: "",
          ),
        ],
      ),
    );
  }
}
