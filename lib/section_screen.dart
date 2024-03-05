import 'package:dtc_app/section_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'constants.dart';

class SectionScreen extends StatelessWidget {
  SectionScreen({super.key, required this.section, required this.sections});
  String section;
  List sections;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(section),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: AnimationLimiter(
          child: ListView.separated(
            itemCount: sections.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 5,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 850),
                child: SlideAnimation(
                  horizontalOffset: 50.0,
                  child: FadeInAnimation(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              SectionInfoScreen(section: sections[index]),
                        ));
                      },
                      child: buildSection(context,
                          asset: sections[index]["image"],
                          name: sections[index]["name"]),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildSection(context, {required String asset, required String name}) =>
      Card(
        elevation: 2.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                asset,
                width: MediaQuery.of(context).size.width / 3,
                height: 80,
                fit: BoxFit.cover,
              ),
              Text(
                name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
      );
}
