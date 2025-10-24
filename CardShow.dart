import 'package:flutter/material.dart';

import 'Module_10_CardWidget.dart';


class Cardshow extends StatelessWidget {
  // ekta List and List er moddhe 4ta Map
  final List<Map<String, String>> courseData = const [
    // 1st MAP
    {
      'image': 'https://cdn.ostad.app/course/cover/2024-12-17T11-35-19.890Z-Course%20Thumbnail%2012.jpg', // Replace with a real asset path
      'batch': 'ব‍্যাচ ১৪',
      'seat': '৭১ সিট বাকি',
      'days': '৩৭১ দিন বাকি',
      'title': 'Full Stack Web Development with JavaScript (MERN)'
    },
    // 2ND MAP
    {
      'image': "https://cdn.ostad.app/course/cover/2024-12-19T15-48-52.487Z-Full-Stack-Web-Development-with-Python,-Django-&-React.jpg",
      'batch': 'ব্যাচ ৮',
      'seat': '২ সিট বাকি',
      'days': '২ দিন বাকি',
      'title': 'Full Stack Web Development with Python, Django & React'
    },
    // 3RD MAP
    {
      'image': "https://cdn.ostad.app/course/cover/2024-12-18T15-29-34.261Z-Untitled-1%20(23).jpg",
      'batch': 'ব্যাচ ১০',
      'seat': '৩৯ সিট বাকি',
      'days': '২৯ দিন বাকি',
      'title': 'Full Stack Web Development with ASP.Net Core'
    },
    // 4TH MAP
    {
      'image': "https://cdn.ostad.app/course/cover/2024-12-18T15-24-44.114Z-Untitled-1%20(21).jpg",
      'batch': 'ব্যাচ ১৬',
      'seat': '৩৩ সিট বাকি',
      'days': '২০ দিন বাকি',
      'title': 'SQA: Manual & Automated Testing'
    },


  ];
  Cardshow({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("Module 10 Assignment"),
        backgroundColor: Colors.blue,
      ),
      body:Padding(
        padding: const EdgeInsets.all(2),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 10,
                mainAxisExtent: 300
            ),
            itemCount: courseData.length,
            itemBuilder: (context, index) {
              final data = courseData[index];

              return  module_10_CardWidget(
                image: data['image']!,
                batch: data['batch']!,
                seat: data['seat']!,
                days: data['days']!,
                title: data['title']!,
              );



            }
            ),
      )
    );
  }
}

