import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("معهد دمشق المتوسط")),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Card(
              elevation: 3.0,
              child: Column(
                children: [
                  Image.asset(
                    "images/unrwa.jpg",
                    height: MediaQuery.of(context).size.height / 4,
                    // width: MediaQuery.of(context).size.width / 3,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "أسست الأمم المتحدة منظمة تسمي «هيئة الأمم المتحدة لإغاثة اللاجئين الفلسطينيين» في نوفمبر 1948 لتقديم المعونة للاجئين الفلسطينيين وتنسيق الخدمات التي تقدم لهم من طرف المنظمات غير الحكومية وبعض منظمات الأمم المتحدة الأخرى. وفي 8 ديسمبر 1949 وبموجب قرار الجمعية العامة رقم 302، تأسست وكالة الأمم المتحدة لغوث وتشغيل اللاجئين الفلسطينيين لتعمل كوكالة مخصصة ومؤقتة، على أن تجدد ولايتها كل ثلاث سنوات لغاية إيجاد حل عادل للقضية الفلسطينية. ومقرها الرئيسي في فيينا وعمان.",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
