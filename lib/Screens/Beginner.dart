import 'package:flutter/material.dart';
import 'package:yoga_app/Screens/rUready.dart';

class Startup extends StatefulWidget {
  const Startup({Key? key}) : super(key: key);

  @override
  _StartupState createState() => _StartupState();
}

class _StartupState extends State<Startup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 10, 5),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => rUready(),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "START",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Color.fromARGB(255, 34, 43, 68),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              collapseMode: CollapseMode.parallax,
              title: DefaultTextStyle(
                style: TextStyle(
                  color: Colors.white, // Set the title color to white
                  fontSize: 20.0, // Adjust as desired
                ),
                child: Text("Beginner Basics"),
              ),
              background: Image.network(
                "https://st2.depositphotos.com/1757635/8830/i/450/depositphotos_88307532-stock-photo-woman-meditating-on-beach.jpg",
                fit: BoxFit.cover,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.thumb_up_alt_sharp,
                      color: Color.fromARGB(255, 34, 43, 68), // Outline color
                      size: 29, // Slightly larger size for the outline effect
                    ),
                    Icon(
                      Icons.thumb_up_alt_sharp,
                      color: Color.fromARGB(255, 248, 184, 214), // Icon color
                      size: 24, // Original icon size
                    ),
                  ],
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "16 Mins || 26 Workouts",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => Divider(
                            thickness: 2,
                          ),
                      itemBuilder: (context, index) => ListTile(
                            leading: Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Image.network(
                                  "https://i.pinimg.com/originals/64/41/61/644161b5ce15397473f2c4a49620ee8f.gif",
                                  fit: BoxFit.cover,
                                )),
                            title: Text(
                              "${index + 1}) Yoga",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            subtitle: Text(
                              (index % 2 == 0) ? "00:20" : "x20",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                      itemCount: 10)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
