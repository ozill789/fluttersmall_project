import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/responsive_button.dart';

import 'apptext.dart';
import 'apptextbold.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List img = ['welcome.webp', 'welcome1.webp', 'welcome2.jpg'];

    List apptext1 = [
      'Trip',
      'Trip1',
      'Trip2',
    ];

    List apptext2 = [
      'Mountains',
      'Mountains2',
      'Mountains3',
    ];

    List apptext3 = [
      'Mountains hikes give you an incredible sense of freedom along with endurance tests',
      'Mountains hikes give you an incredible sense of freedom along with endurance tests',
      'Mountains hikes give you an incredible sense of freedom along with endurance tests',
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: img.length,
          itemBuilder: (_, index) {
            return Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: const Alignment(0.5, 0.5),
                      // ignore: prefer_interpolation_to_compose_strings
                      image: AssetImage('images/' + img[index]))),
              child: Container(
                margin: const EdgeInsets.only(top: 130, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTextBold(
                            size: 33,
                            color: Colors.black,
                            text: apptext1[index]),
                        AppText(
                            size: 27,
                            color: Colors.black,
                            text: apptext2[index]),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 280,
                          child: AppText(
                              size: 20,
                              color: Colors.black,
                              text: apptext3[index]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ResponsiveButton(
                          width: 100,
                          height: 50,
                          size: 17,
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(top: 1),
                          width: 7,
                          height: index == indexDots ? 40 : 12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? Colors.blue
                                  : const Color.fromARGB(255, 199, 193, 193)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
