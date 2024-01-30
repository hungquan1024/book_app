
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class RoomDetail extends StatefulWidget {
  const RoomDetail({super.key});

  @override
  State<RoomDetail> createState() => _RoomDetailState();
}

class _RoomDetailState extends State<RoomDetail> {

  List<String> languages = ['VN', 'Eng'];
  String? selectedLanguage = 'VN';

  @override
  Widget build(BuildContext context) {

    final myitems = [
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          'images/room.jpg',
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          'images/rectangle-7.png',
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          'images/bali.jpg',
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    
    ];
  
    // ignore: unused_local_variable
    int myCurrentIndex = 0;

    return Scaffold(
       appBar: AppBar(
        backgroundColor: const Color(0xFF546A83),
        title: const Text('Booking', style: TextStyle(color: Colors.white),),
        actions: [
          SizedBox(
            width: 80,
            child: DropdownButton<String>(
              iconDisabledColor: Colors.white,
              iconEnabledColor: Colors.white,
              dropdownColor: Colors.blue[300],
              borderRadius: BorderRadius.circular(12),
              value: selectedLanguage, 
              items: languages
                .map((language) => DropdownMenuItem<String>(
                  value: language,
                  child: Text(language, style:const TextStyle(fontSize: 18, color: Colors.white)),
                  ))
                .toList(),
              onChanged: (language) => setState(
                () => selectedLanguage = language,
              ) 
            
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.today,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 80,
            child: 
              Container(
               //  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                        // padding: const EdgeInsets.only(bottom: 8),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            autoPlayAnimationDuration: const Duration(milliseconds: 800),
                            autoPlayInterval: const Duration(seconds: 2),
                            enlargeCenterPage: true,
                            height: 240,
                            onPageChanged: (index, reason) {
                              setState(() {
                                myCurrentIndex = index;
                              });
                            },
                          ), 
                          items: myitems,
                        ),
                      ),
                                
                      Container(
                        margin: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                        padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                        // height: 80,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1
                            ),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Villa Kayu Lama', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.amber,
                                    ),
                                    Text('4.5', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),)
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.amber,
                                ),
                                Text(
                                  'Ubud, Indonesia', 
                                  style: TextStyle(
                                    fontSize: 16, 
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF7A7289)
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                        padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 16),
                                  child: SizedBox(
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () { },
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.fromLTRB(16, 2, 16, 2),
                                        ),
                                        foregroundColor: MaterialStateProperty.all(Colors.white),
                                        backgroundColor: MaterialStateProperty.all(const Color(0xFF18C0C1)),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder> (
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(24),
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        'Details', 
                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 16),
                                  child: SizedBox(
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () { },
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.fromLTRB(16, 2, 16, 2),
                                        ),
                                        foregroundColor: MaterialStateProperty.all(Colors.black),
                                        backgroundColor: MaterialStateProperty.all(const Color(0xFFD4DDEC)),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder> (
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(24),
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        'Reviews', 
                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                                            
                            Container(
                              margin: const EdgeInsets.only(top: 12),
                              child:  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Suake a ds, Villa Kayu Lama offers a lla Kayu L Villa Kayu Lama offers a lla Kayu Villa Kayu Lama offers a lla Kayu VillGuests can take a leisurely swim in the private...',
                                    style: TextStyle(
                                      color: Color.fromARGB(190, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 12),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          facilitiesImageMethod('images/bali.jpg', 'Outdoor Pool' ),
                                          facilitiesImageMethod('images/room.jpg', '1 Bathtub' ),
                                          facilitiesImageMethod('images/room.jpg', 'Free Wifi' ),
                                          facilitiesImageMethod('images/room.jpg', 'Free Breakfast' ),
                                          facilitiesImageMethod('images/room.jpg', 'Free Wifi' ),
                                          facilitiesImageMethod('images/room.jpg', 'Free Wifi' ),
                                        ],
                                      ),
                                    ),
                                  )
                                  
                                ],
                              ),
                            ),
                                            
                            
                          ],
                        ),
                      ),
                  
                    ],
                  ),
                ),
              ),
          ),

          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF546A83),
                // borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20) )
              ),
              height: 80,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: '\$60',
                      style: TextStyle(fontSize: 34, color: Colors.white),
                      children: <TextSpan> [
                        TextSpan(text: '/Night', style: TextStyle(fontSize: 16))
                      ]
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () { },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.fromLTRB(32, 14, 32, 14),
                      ),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(const Color(0xFF18C0C1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder> (
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                    child: const SizedBox(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Continue', style: TextStyle(fontSize: 16),),
                          Icon(
                            Icons.arrow_forward,
                          )
                        ],
                      ),
                    )
                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
    
  }

  Container facilitiesImageMethod(String imgInfor, String textInfor) {
    return Container(
                                        width: 70,
                                        margin: const EdgeInsets.only(right: 12),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(bottom: 4, top: 4),
                                              height: 60,
                                              width: 60,
                                              child: CircleAvatar(
                                                radius: 48, // Image radius
                                                backgroundImage: AssetImage(imgInfor),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 60,
                                              child: Text(
                                                textInfor,
                                                style: const TextStyle(fontWeight: FontWeight.w500),
                                                overflow: TextOverflow.clip,
                                                maxLines: 3,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
  }
}