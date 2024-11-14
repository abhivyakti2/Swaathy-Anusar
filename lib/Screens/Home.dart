import 'package:flutter/material.dart';
import 'package:yoga_app/Screens/Beginner.dart';
import 'package:yoga_app/Widgets/AppBar.dart';
import 'package:yoga_app/Widgets/CustomDrawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorTween, _homeTween, _yogaTween, _iconTween, _drawerTween;
  late AnimationController _textAnimationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 0),
    );
    _colorTween = ColorTween(
            begin: Colors.transparent, end: Color.fromARGB(255, 248, 184, 214))
        .animate(_animationController);
    _iconTween = ColorTween(
            begin: Color.fromARGB(255, 248, 184, 214),
            end: Color.fromARGB(255, 117, 121, 143))
        .animate(_animationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_animationController);
    _homeTween =
        ColorTween(begin: Colors.white, end: Color.fromARGB(255, 117, 121, 143))
            .animate(_animationController);
    _yogaTween =
        ColorTween(begin: Colors.white, end: Color.fromARGB(255, 34, 43, 68))
            .animate(_animationController);
    _textAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 0),
    );

    super.initState();
  }

  bool scrollListner(ScrollNotification scrollNotification) {
    bool scroll = false;
    if (scrollNotification.metrics.axis == Axis.vertical) {
      _animationController.animateTo(scrollNotification.metrics.pixels / 80);
      _textAnimationController.animateTo(scrollNotification.metrics.pixels);
      return scroll = true;
    }
    return scroll;
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Colors.white,
      body: NotificationListener(
        onNotification: scrollListner,
        child: Stack(children: [
          Container(
            height: double.infinity,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(50, 90, 50, 40),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 34, 43, 68),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(13),
                                    bottomLeft: Radius.circular(13))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 23),
                                      ),
                                      Text("Streak",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "120",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 23),
                                      ),
                                      Text("kCal",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "26",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 23),
                                      ),
                                      Text("Minutes",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: Column(
                              children: [
                                //ONE CATEGORY
                                //HEADING
                                Container(
                                  padding: EdgeInsets.only(bottom: 15),
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "All in One Workout",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                //HEADING END

                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Startup()));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 150,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  "https://st2.depositphotos.com/1757635/8830/i/450/depositphotos_88307532-stock-photo-woman-meditating-on-beach.jpg"),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          color: Colors.black26,
                                        ),
                                        Positioned(
                                          right: 20,
                                          left: 10,
                                          top: 10,
                                          child: Text(
                                            "Beginner Basics",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Positioned(
                                          right: 30,
                                          left: 12,
                                          top: 38,
                                          child: Text(
                                            "Last Time : 2 Feb",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                //SUBCATEGORY 1 DONE
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://lorigeurin.com/wp-content/uploads/2021/04/42-Powerful-Intermittent-Fasting-Quotes-To-Spark-Your-Motivation.jpg"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        color: Colors.black26,
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Intermediate Flow",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        right: 30,
                                        left: 12,
                                        top: 38,
                                        child: Text(
                                          "Last Time : 2 Feb",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                //SUBCATEGORY 2 DONE
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    "https://images.squarespace-cdn.com/content/v1/5abc2d09da02bc72cdaea375/1522282502605-9D58L3026Q0KV8RO7IOB/800-0425_Simply_Yoga_Susan_02.jpg"))),
                                      ),
                                      Container(
                                        height: 150,
                                        color: Colors.black26,
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Advanced Practice",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        right: 30,
                                        left: 12,
                                        top: 38,
                                        child: Text(
                                          "Last Time : 2 Feb",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // SUBCAT 3 DONE
                              ],
                            ),
                          ),
                          //ONE CATEGORY DONE
                          // TWO HEADING

                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 15),
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Yoga for Wellness",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // TWO HEADING END

                                //SUB CAT 1

                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://ibdnewstoday.com/wp-content/uploads/2015/11/shutterstock_267258164-1200x630-cropped.jpg"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        color: Colors.black26,
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Better Sleep",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        right: 30,
                                        left: 12,
                                        top: 38,
                                        child: Text(
                                          "Last Time : 2 Feb",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                //SUBCATEGORY 1 DONE

                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    "https://rubhq.com/src/img/ad/charleston-sc-incall-body-rub-massage-843-469-9823-52afbb457.webp"))),
                                      ),
                                      Container(
                                        height: 150,
                                        color: Colors.black26,
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Stress Relief & Relaxation",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        right: 30,
                                        left: 12,
                                        top: 38,
                                        child: Text(
                                          "Last Time : 2 Feb",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                //SUBCATEGORY 2 DONE
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://orianaphotography.com/wp-content/uploads/2012/10/72dpiWM-20120814-7199CourtneyYogaSunset-.jpg"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        color: Colors.black26,
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Posture Improvement",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        right: 30,
                                        left: 12,
                                        top: 38,
                                        child: Text(
                                          "Last Time : 2 Feb",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // SUBCAT 3 DONE
                              ],
                            ),
                          ),
                          //TWO CATEGORY DONE

                          //THIRD CATEGORY

                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Column(
                              children: [
                                Container(
                                  // HEADING
                                  padding: EdgeInsets.only(bottom: 15),
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Yoga for Fitness",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // HEADING END

                                //SUB CAT 1
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    "https://www.rtgconsulting.com/wp-content/uploads/2019/06/rise-big.jpg"))),
                                      ),
                                      Container(
                                        height: 150,
                                        color: Colors.black26,
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Flexibility",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        right: 30,
                                        left: 12,
                                        top: 38,
                                        child: Text(
                                          "Last Time : 2 Feb",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                //SUBCATEGORY 1 DONE
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    "https://th.bing.com/th/id/OIP.37awRu6JtvNZjsJdgOVdqQHaE7?w=624&h=415&rs=1&pid=ImgDetMain"))),
                                      ),
                                      Container(
                                        height: 150,
                                        color: Colors.black26,
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Balance & Coordination",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        right: 30,
                                        left: 12,
                                        top: 38,
                                        child: Text(
                                          "Last Time : 2 Feb",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                //SUBCATEGORY 2 DONE
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://santoshayogainstitute.edu.au/wp-content/uploads/2022/08/best-300-hour-ytt-bali.png"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        color: Colors.black26,
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Immune & Detox",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        right: 30,
                                        left: 12,
                                        top: 38,
                                        child: Text(
                                          "Last Time : 2 Feb",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                //SUBCAT 3 DONE

                                //4TH CATEGORY

                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://th.bing.com/th/id/OIP.oOe7EkSNVuPXs_goTyGiTwHaE7?w=720&h=479&rs=1&pid=ImgDetMain"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        color: Colors.black26,
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Namaskaras (Salutations)",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        right: 30,
                                        left: 12,
                                        top: 38,
                                        child: Text(
                                          "Last Time : 2 Feb",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //4TH CAT DONE

                          //5TH CATEGORY

                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Column(
                              children: [
                                Container(
                                  // HEADING
                                  padding: EdgeInsets.only(bottom: 15),
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Targeted Focus",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // HEADING END

                                //SUB CAT 1
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://th.bing.com/th/id/OIP.QNbdlDn1h7Jf0azIkfji-wHaEK?w=1024&h=576&rs=1&pid=ImgDetMain"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        color: Colors.black26,
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Eye Exercises",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        right: 30,
                                        left: 12,
                                        top: 38,
                                        child: Text(
                                          "Last Time : 2 Feb",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                //SUBCATEGORY 1 DONE
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://srrriverview.in/assets/images/srr-river-edge-intro-1.webp"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        color: Colors.black26,
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Back Strengthening Poses",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        right: 30,
                                        left: 12,
                                        top: 38,
                                        child: Text(
                                          "Last Time : 2 Feb",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                //SUBCATEGORY 2 DONE
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    "https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=920&q=80"))),
                                      ),
                                      Container(
                                        height: 150,
                                        color: Colors.black26,
                                      ),
                                      Positioned(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        child: Text(
                                          "Neck and Shoulders",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Positioned(
                                        right: 30,
                                        left: 12,
                                        top: 38,
                                        child: Text(
                                          "Last Time : 2 Feb",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // SUBCAT 3 DONE
                              ],
                            ),
                          ),

                          //5TH CAT DONE
                        ],
                      )
                    ],
                  ),
                ),
                MyAppBar(
                    animationController: _animationController,
                    colorsTween: _colorTween,
                    drawerTween: _drawerTween,
                    homeTween: _homeTween,
                    iconTween: _iconTween,
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    yogaTween: _yogaTween)
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
