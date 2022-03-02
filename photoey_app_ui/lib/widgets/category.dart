// ignore_for_file: unused_local_variable, unused_field
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';


class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final List categories = [
    "Popular",
    "New",
    "Captured",
    "Saved",
    "Tags",
    "People"
  ];

  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    final finalwith = MediaQuery.of(context).size.width;
    final finalheight = MediaQuery.of(context).size.height;
    return FadeInUp(
      delay: Duration(milliseconds: 500),
      child: Container(
        width: finalwith,
        // color: Color.fromRGBO(255, 235, 59, 1),
        height: finalheight / 17,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (ctx, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentindex = index;
                    });
                  },
                  child: Column(children: [
                    Text(
                      categories[index],
                      style: TextStyle(
                          fontWeight: _currentindex == index
                              ? FontWeight.bold
                              : FontWeight.w500,
                          color:
                              _currentindex == index ? Colors.black : Colors.grey,
                          fontSize: _currentindex == index ? 16 : 14),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Visibility(
                        visible: _currentindex == index,
                        child: Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                        ))
                  ]),
                ),
              );
            }),
      ),
    );
  }
}
