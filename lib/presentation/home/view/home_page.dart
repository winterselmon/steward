import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:steward/constants/color.dart';
import 'package:steward/utils/utils.dart';
import 'package:steward/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double height;
  late double width;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = screenHeight(context);
    width = screenWidth(context);

    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(width, 10.h), child: const AppBarContents()),
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const Text('Page 1 1 1 1 1 1 1 1 1 1 1 1 1 1 11 1 1 1 11 1'),
                ElevatedButton(onPressed: () {}, child: const Text('Press'))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
