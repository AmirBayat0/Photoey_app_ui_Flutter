import 'package:flutter/material.dart';

import '../widgets/photosection.dart';
import '../widgets/appbar.dart';
import '../widgets/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final finalwith = MediaQuery.of(context).size.width;
    final finalheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: finalwith,
          height: finalheight,
          child: Column(
            children: [
              MyAppBar(),
              Category(),
              PhotoSection(),
            ],
          ),
        ),
      ),
    );
  }
}
