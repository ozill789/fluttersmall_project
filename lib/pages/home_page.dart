import 'package:flutter/material.dart';

import '../welcome/apptextbold.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
            margin: const EdgeInsets.only(right: 250),
            child: AppTextBold(
              color: Colors.black,
              size: 30,
              text: 'Discover',
            )),
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
              indicator: CircleTabIndicator(radius: 4, color: Colors.red),
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
          height: 200,
          child: TabBarView(controller: tabcontroller, children: const [
            Text(
              'hello',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'hello',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'hello',
              style: TextStyle(color: Colors.black),
            ),
          ]),
        )
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
