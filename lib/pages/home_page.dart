import 'package:flutter/material.dart';
import 'package:flutter_application_1/welcome/apptext.dart';

import '../welcome/apptextbold.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var iconbutton = {
    'kayaking.jpg': 'Kayaking',
    'snarkeling.jpg': 'Snarkeling',
    'balloning.jpg': 'Balloning',
    'hiking.jpg': 'Hiking',
  };

  @override
  Widget build(BuildContext context) {
    TabController tabcontroller = TabController(length: 3, vsync: this);
    return Scaffold(
        body: Column(
      children: [
        //menu
        Container(
          margin: const EdgeInsets.only(top: 60, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu,
                color: Colors.black,
                size: 40,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 202, 189, 189),
                    image: const DecorationImage(
                        image: AssetImage('images/me_image.jpg'))),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),

        Container(
          margin: const EdgeInsets.only(right: 270),
          child: AppTextBold(size: 27, color: Colors.black, text: 'Discover'),
        ),
        const SizedBox(
          height: 30,
        ),

        Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
              labelPadding: const EdgeInsets.only(left: 25, right: 25),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              controller: tabcontroller,
              isScrollable: true,
              indicator: CircleTabIndicator(
                  radius: 4, color: const Color.fromARGB(255, 97, 175, 239)),
              tabs: const [
                Text(
                  'Places',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'Inspiration',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'Emotions',
                  style: TextStyle(fontSize: 17),
                ),
              ]),
        ),
        SizedBox(
          width: double.infinity,
          height: 350,
          child: TabBarView(controller: tabcontroller, children: [
            ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      width: 230,
                      height: 350,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('images/mount2.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                }),
            const Text(
              'hello',
              style: TextStyle(color: Colors.black),
            ),
            const Text(
              'hello',
              style: TextStyle(color: Colors.black),
            ),
          ]),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTextBold(size: 20, color: Colors.black, text: 'Explore more'),
              AppText(size: 18, color: Colors.black, text: 'See all')
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
            width: double.infinity,
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('images/' +
                                      iconbutton.keys.elementAt(index)))),
                        ),
                        AppText(
                            size: 15,
                            color: Colors.black,
                            text: iconbutton.values.elementAt(index))
                      ],
                    ),
                  );
                }))
      ],
    ));
  }
}

// ignore: must_be_immutable
class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.radius, required this.color});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.radius, required this.color});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height + radius);
    canvas.drawCircle(offset + circleOffset, radius, paint);
  }
}
