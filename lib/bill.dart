import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zomato/model.dart';

class bill extends StatelessWidget {
  model m = Get.put(model());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("ZOMATO BILL"),
      ),
      body: Column(
        children: [
          Obx(() =>   CheckboxListTile(
            title: Text("Pizza"),
            subtitle: Text("100/-"),
            value: m.t1.value,
            onChanged: (value) {
              // print("value");
              m.t1.value = value!;
              m.logic(1, 100);
              // setState(() {});
            }),),
          Obx(() => CheckboxListTile(
              title: Text("Puff"),
              subtitle: Text("15/-"),
              value: m.t2.value,
              onChanged: (value) {
                m.t2.value = value!;
               m.logic(2, 15);
                // setState(() {});
              }),),
          Obx(() => CheckboxListTile(
              title: Text("Greel Sendwhich"),
              subtitle: Text("120/-"),
              value: m.t3.value,
              onChanged: (value) {
                m.t3.value = value!;
                m.logic(3, 120);
                // setState(() {});
              }),),
          Obx(() => CheckboxListTile(
              title: Text("Burger"),
              subtitle: Text("95/-"),
              value: m.t4.value,
              onChanged: (value) {
                m.t4.value = value!;
                m.logic(4, 95);
                // setState(() {});
              }),),
          Obx(() => CheckboxListTile(
              title: Text("Manchurian"),
              subtitle: Text("140/-"),
              value: m.t5.value,
              onChanged: (value) {
                m.t5.value = value!;
                m.logic(5, 140);
                // setState(() {});
              }),),
          Obx(() => CheckboxListTile(
              title: Text("Pani-Puri"),
              subtitle: Text("30/-"),
              value: m.t6.value,
              onChanged: (value) {
                m.t6.value = value!;
                m.logic(6, 30);
                // setState(() {});
              }),),
          Obx(() => CheckboxListTile(
              title: Text("Dosa"),
              subtitle: Text("190/-"),
              value: m.t7.value,
              onChanged: (value) {
                m.t7.value = value!;
                m.logic(7, 190);
                // setState(() {});
              }),),
          Obx(() => CheckboxListTile(
              title: Text("Samosa"),
              subtitle: Text("20/-"),
              value: m.t8.value,
              onChanged: (value) {
                m.t8.value = value!;
                m.logic(8, 20);
                // setState(() {});
              }),),
          Obx(() => CheckboxListTile(
              title: Text("Kachori"),
              subtitle: Text("50/-"),
              value: m.t9.value,
              onChanged: (value) {
                m.t9.value = value!;
                m.logic(9, 50);
                // setState(() {});
              }),),
          Obx(() =>  CheckboxListTile(
             title: Text("ice cream"),
             subtitle: Text("120/-"),
             value: m.t10.value,
             onChanged: (value) {
               m.t10.value = value!;
               m.logic(10, 120);
               // setState(() {});
             }),),
          Container(
            // margin: EdgeInsets.only(top: 40, bottom: 40),
            child: Obx(() => Text(
              "Total amount : ${m.total}",
              style: TextStyle(fontSize: 20),
            )),
          )
        ],
      ),
    );
  }
}