import 'package:flutter/material.dart';


class module_10_CardWidget extends StatelessWidget {
  final String image,batch,seat,days,title;

  module_10_CardWidget({
    super.key,required this.image,
    required this.batch,
    required this.seat,
    required this.days,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body: Card(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      // image add korsi
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),

                            ),
                            image: DecorationImage(
                              //image: NetworkImage("url")
                              //image: AssetImage("assets/Marvel's SpiderMan.png"),
                              //image: AssetImage(image),
                              image: NetworkImage(image),
                              fit: BoxFit.cover,

                              //fit: BoxFit.cover
                            )
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // 1st item
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                height: 20,
                                width: 37,
                                padding: EdgeInsets.only(left: 3.5,top: 2),

                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(batch,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            // 2nd item
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                height: 20,
                                width: 70,
                                padding: EdgeInsets.all(2),

                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Row(

                                    children: [
                                      Icon(Icons.groups, size: 10, color: Colors.black54),
                                      Text(seat,
                                        style: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // 3rd item
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                height: 20,
                                width: 70,
                                padding: EdgeInsets.all(2),

                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.access_time,size: 10, color: Colors.black54),
                                    Text(days,
                                      style: const TextStyle(
                                        fontSize: 10,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      // Border line show
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      // Title show
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),

                      //Button and icon show
                      SizedBox(
                        width: 180,
                        height: 30,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade400,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            onPressed: (){},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'বিস্তারিত দেখি',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(Icons.arrow_forward_rounded,color: Colors.black,
                                  size: 24,),
                              ],
                            )

                        ),
                      )

                    ],
                  )
              )

        );


  }
}





