import 'package:dtc_app/components.dart';
import 'package:flutter/material.dart';

class RegistrationInfoScreen extends StatelessWidget {
  const RegistrationInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("معلومات التسجيل"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildItem(context,
                header: "قسم الفني",
                body:
                    "Irure proident in ex dolore eiusmod velit do consequat. Ut sit cupidatat anim amet velit aliquip dolor voluptate aliqua. Eu proident id quis veniam commodo occaecat incididunt culpa labore excepteur aute consequat eu commodo. Reprehenderit nulla anim ex aute qui esse proident incididunt amet quis esse irure in dolor. Aliquip labore amet consequat sint tempor anim.",
                isExpanded: true),
            buildItem(context,
                header: "قسم المهني",
                body:
                    "Tempor cillum dolore duis dolore pariatur culpa et reprehenderit aute eu aliqua sunt. Aute ad deserunt ullamco labore consectetur qui dolore. Nisi consectetur dolore in excepteur eu dolor sint velit aliquip aliquip elit ut deserunt qui."),
            buildItem(context,
                header: "دورات قصيرة",
                body:
                    "Culpa sunt fugiat consectetur eiusmod sunt ut laborum esse ut est veniam in qui. Anim consequat quis aliqua reprehenderit. Culpa enim proident adipisicing deserunt anim cillum id dolore do laboris officia sint officia ea.")
          ],
        ),
      ),
    );
  }
}
