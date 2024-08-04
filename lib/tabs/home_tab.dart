import 'package:audibooks_ui/app_colors.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home_tab extends StatefulWidget {
  Home_tab({super.key});

  @override
  State<Home_tab> createState() => _Home_tabState();
}

class _Home_tabState extends State<Home_tab> {
  int tag = 1;
  final _controller = PageController();
  final _controller1 = PageController();
  List<String> options = [
    'News',
    'Entertainment',
    'Politics',
    'Automotive',
    'Sports',
    'Education',
    'Fashion',
    'Travel',
    'Food',
    'Tech',
    'Science',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        "Categories",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: app_colors.black,
                            fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "See more ",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: app_colors.perpule,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  StatefulBuilder(
                    builder: (context, setState) {
                      return ChipsChoice<int>.single(
                        value: tag,
                        onChanged: (val) => setState(() => tag = val),
                        choiceItems: C2Choice.listFrom<int, String>(
                          source: options,
                          value: (i, v) => i,
                          label: (i, v) => v,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Recommended For You",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: app_colors.black,
                            fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "See more ",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: app_colors.perpule,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Container(
                      height: 200,
                      child:
                          PageView(
                            controller: _controller,
                            children: [
                              Image.asset("assets/Image Placeholder 400x600.png",width: 200,),
                              Image.asset("assets/Image Placeholder 1.png"),
                              Image.asset("assets/Image Placeholder 400x600.png"),
                              Image.asset("assets/Image Placeholder 1.png"),
                            ],
                          ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SmoothPageIndicator(
                            controller: _controller,
                            count: 4,
                            effect: ExpandingDotsEffect(
                              activeDotColor: Color(0xff98A2B3),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        "Best Seller",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: app_colors.black,
                            fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "See more ",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: app_colors.perpule,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 200,
                    child:
                    PageView(
                      controller: _controller1,
                      children: [
                        Image.asset("assets/Card Best Seller.png"),
                        Image.asset("assets/Card Best Seller.png"),
                        Image.asset("assets/Card Best Seller.png"),
                        Image.asset("assets/Card Best Seller.png"),

                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmoothPageIndicator(
                          controller: _controller1,
                          count: 4,
                          effect: ExpandingDotsEffect(
                            activeDotColor: Color(0xff98A2B3),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
