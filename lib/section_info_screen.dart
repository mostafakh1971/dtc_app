import 'package:carousel_slider/carousel_slider.dart';
import 'package:dtc_app/components.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class SectionInfoScreen extends StatelessWidget {
  SectionInfoScreen({super.key, required this.section});
  Map section;
  List images = [];
  @override
  Widget build(BuildContext context) {
    images = section["images"];
    return Scaffold(
      appBar: AppBar(
        title: Text(section["name"]),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: AnimationLimiter(
          child: Column(
              children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(milliseconds: 500),
            childAnimationBuilder: (widget) => SlideAnimation(
              horizontalOffset: 50,
              child: FadeInAnimation(child: widget),
            ),
            children: [
              CarouselSlider(
                  items: images
                      .map((e) => Image.asset(
                            e,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                          ))
                      .toList(),
                  options:
                      CarouselOptions(autoPlay: true, viewportFraction: 1.0)),
              const SizedBox(
                height: 15,
              ),
              buildInfo(key: "اسم المدرب :", value: section["trainer"]),
              buildItem(context,
                  header: "مدة التدريب", body: section["duration"]),
              buildItem(context,
                  header: "المتطلبات",
                  body:
                      "الشهادة المطلوبة : ${section["requirements"]["cretifcate"]}\nالمجموع : ${section["requirements"]["result"]}"),
              buildItem(context, header: "الوصف", body: section["description"]),
            ],
          )),
        ),
      ),
    );
  }

  Container buildInfo({required String key, required String value}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(color: Colors.grey.shade600),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            key,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Text(
            value,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
