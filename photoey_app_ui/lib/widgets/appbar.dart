import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final finalwith = MediaQuery.of(context).size.width;
    final finalheight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Container(
        width: finalwith,

        padding: EdgeInsets.all(20),
        // color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            FadeInDown(
              child: Text(
                "Find Awesome \nPhotos🔥",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FadeInUp(
              delay: Duration(milliseconds: 400),
              duration: Duration(milliseconds: 800),
              child: SizedBox(
                height: 40,
                child: TextField(
                  onChanged: (val) {},
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 238, 238, 238),
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 146, 146, 146),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      hintText: "Search",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 131, 131, 131))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
