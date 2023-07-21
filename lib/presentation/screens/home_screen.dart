import 'package:flutter/material.dart';
import '../widgets/custom_azkar_category.dart';
import '../widgets/custom_banner.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomBanner(),
          CustomAzkrCategory( ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: kPrimaryColor,
      //     selectedItemColor: Colors.white,
      //     unselectedItemColor: Colors.grey.withOpacity(0.9),
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home_filled),
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.mosque),
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home_filled),
      //         label: '',
      //       )
      //     ]),
    );
  }
}
