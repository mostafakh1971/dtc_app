import 'package:carousel_slider/carousel_slider.dart';
import 'package:dtc_app/constants.dart';
import 'package:dtc_app/info_screen.dart';
import 'package:dtc_app/registration_info_screen.dart';
import 'package:dtc_app/section_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DTC"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const RegistrationInfoScreen(),
              ));
            },
            icon: const Icon(Icons.article_outlined)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const InfoScreen(),
                ));
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            CarouselSlider(
                items: dtcImages
                    .map((e) => Image.asset(
                          e,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ))
                    .toList(),
                options:
                    CarouselOptions(autoPlay: true, viewportFraction: 1.0)),
            const SizedBox(
              height: 10,
            ),
            AnimationLimiter(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: sections.length,
                itemBuilder: (BuildContext context, int index) {
                  return AnimationConfiguration.staggeredGrid(
                    duration: const Duration(milliseconds: 1200),
                    position: index,
                    columnCount: 2,
                    child: ScaleAnimation(
                      child: FadeInAnimation(
                        child: buildSection(context,
                            asset: sections[index]["image"],
                            name: sections[index]["name"],
                            sections: subSection[sections[index]["name"]]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSection(context,
      {required String asset, required String name, required List sections}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SectionScreen(
            section: name,
            sections: sections,
          ),
        ));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Image.asset(
              asset,
              height: 150,
              width: MediaQuery.of(context).size.width / 2,
              fit: BoxFit.cover,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
