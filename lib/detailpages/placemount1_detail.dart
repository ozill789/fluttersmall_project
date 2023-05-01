import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/app_button.dart';
import 'package:flutter_application_1/widget/apptext.dart';
import 'package:flutter_application_1/widget/apptextbold.dart';
import 'package:flutter_application_1/widget/responsive_button.dart';

class PlaceMount1Detail extends StatefulWidget {
  const PlaceMount1Detail({super.key});

  @override
  State<PlaceMount1Detail> createState() => _PlaceMount1DetailState();
}

class _PlaceMount1DetailState extends State<PlaceMount1Detail> {
  List people = [
    '1',
    '2',
    '3',
    '4',
    'More',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              child: Container(
            width: double.infinity,
            height: 350,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/mount2.jpg'), fit: BoxFit.cover)),
          )),
          Positioned(
              child: Container(
            margin: const EdgeInsets.only(left: 15),
            width: double.infinity,
            height: 150,
            child: Row(
              children: const [
                Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 320,
                ),
                Icon(
                  Icons.more_vert,
                  size: 30,
                  color: Colors.white,
                )
              ],
            ),
          )),
          Positioned(
              top: 300,
              child: Container(
                padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppTextBold(
                            size: 30, color: Colors.black, text: 'Yosemite'),
                        AppTextBold(
                            size: 30, color: Colors.blue, text: '\$ 250')
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        AppText(
                            size: 20,
                            color: Colors.blue,
                            text: 'USA, California')
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Wrap(
                            children: List.generate(5, (index) {
                          return const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          );
                        })),
                        const SizedBox(
                          width: 10,
                        ),
                        AppText(size: 17, color: Colors.black, text: '(5.0)')
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    AppTextBold(size: 23, color: Colors.black, text: 'People'),
                    const SizedBox(
                      height: 10,
                    ),
                    AppText(
                        size: 18,
                        color: Colors.black,
                        text: 'Number of people in your group'),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                        children: List.generate(people.length, (index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(right: 13),
                          child: AppButton(
                            text: people[index],
                            color: Colors.black,
                            bordercolor:
                                const Color.fromARGB(255, 223, 214, 214),
                            backgroundcolor:
                                const Color.fromARGB(255, 223, 214, 214),
                          ),
                        ),
                      );
                    })),
                    const SizedBox(
                      height: 20,
                    ),
                    AppTextBold(
                        size: 23, color: Colors.black, text: 'Description'),
                    const SizedBox(
                      height: 15,
                    ),
                    AppText(
                        size: 18,
                        color: Colors.black,
                        text:
                            'Yosemite National Park is located in central \n Sierra Nevada in the US state of California.It \n is located near the wild protected areas '),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        AppButton(
                          color: Colors.blue,
                          backgroundcolor: Colors.white,
                          bordercolor: const Color.fromARGB(255, 60, 124, 177),
                          istext: false,
                          icon: Icons.favorite_border_outlined,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ResponsiveButton(
                          textdynamic: false,
                          width: 300,
                          height: 60,
                          size: 20,
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
