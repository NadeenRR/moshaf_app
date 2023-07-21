import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constaint.dart';
import 'my_category.dart';

class CustomAzkrCategory extends StatefulWidget {
  const CustomAzkrCategory({super.key});

  @override
  State<CustomAzkrCategory> createState() => _CustomAzkrCategoryState();
}

class _CustomAzkrCategoryState extends State<CustomAzkrCategory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        children: [
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'أذكاري',
                textAlign: TextAlign.center,
                style: GoogleFonts.tajawal(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Color.fromARGB(255, 0, 4, 44),
                  ),
                ),
              ),
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MyCategory(
                  onTap: () => Navigator.pushNamed(context, '/azkar',
                      arguments: 'أذكار الصباح'),
                  color: Colors.green[700]!,
                  text: 'أذكار الصباح',
                ),
              ),
              Expanded(
                child: MyCategory(
                  onTap: () => Navigator.pushNamed(context, '/azkar',
                      arguments: 'أذكار المساء'),
                  color: Colors.orange,
                  text: 'أذكار المساء',
                ),
              )
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MyCategory(
                  onTap: () => Navigator.pushNamed(context, '/azkar',
                      arguments: 'أذكار النوم'),
                  color: Colors.purple,
                  text: 'أذكار النوم',
                ),
              ),
              Expanded(
                child: MyCategory(
                 onTap: () => Navigator.pushNamed(context, '/azkar',
                      arguments: 'أذكار الوضوء'),
                  color: Colors.teal,
                  text: 'أذكار الوضوء',
                ),
              )
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MyCategory(
                 onTap: () => Navigator.pushNamed(context, '/azkar',
                      arguments: 'أذكار الأذان'),
                  color: Colors.lightBlue,
                  text: 'أذكار الأذان',
                ),
              ),
              Expanded(
                child: MyCategory(
                  onTap: () => Navigator.pushNamed(context, '/azkar',
                      arguments: 'أذكار الصلاة'),
                  color: Colors.pinkAccent,
                  text: 'أذكار الصلاة',
                ),
              )
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: MyCategory(
                  onTap: () => Navigator.pushNamed(context, '/azkar',
                      arguments: 'أذكار الاستيقاظ'),
                  color: Colors.pinkAccent,
                  text: 'أذكار الاستيقاظ',
                ),
              ),
              Expanded(
                child: MyCategory(
                  onTap: () {},
                  color: Colors.lightBlue,
                  text: 'المزيد',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
