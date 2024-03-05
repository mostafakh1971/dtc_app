import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

Widget buildItem(BuildContext context,
    {required String header, required String body, bool? isExpanded}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ExpandablePanel(
        controller: ExpandableController(initialExpanded: isExpanded ?? false),
        theme: const ExpandableThemeData(
            hasIcon: false, bodyAlignment: ExpandablePanelBodyAlignment.right),
        header: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                header,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const Icon(Icons.add)
            ],
          ),
        ),
        collapsed: const SizedBox(),
        expanded: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8.0),
          width: MediaQuery.of(context).size.width,
          child: Text(
            body,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        )),
  );
}
