import 'package:booking_app_demo/pages/home_page.dart';
import 'package:booking_app_demo/pages/room_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


int val=0;
Route _createRoute1() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const RoomDetail(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});
  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
    List<String> languages = ['VN', 'Eng'];
    String? selectedLanguage = 'VN';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 320,
              padding: const EdgeInsets.fromLTRB(10, 40, 10, 40),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bali.jpg'),
                  fit: BoxFit.fill
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(_createRoute1());
                        },
                        icon: const Icon(Icons.arrow_back),
                        style: const ButtonStyle(
                          iconSize: MaterialStatePropertyAll(30),
                          iconColor: MaterialStatePropertyAll(Colors.white),
                        ),
                      ),
                      Row(
                        children: [
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
                                  child: Text(language, style:const TextStyle(fontSize: 18, color: Colors.white,)),
                                  ))
                                .toList(),
                              onChanged: (language) => setState(
                                () => selectedLanguage = language,
                              ) 
                            
                            ),
                          ),
                          IconButton(
                            onPressed: () {}, 
                            icon: const Icon(Icons.share),
                            style: const ButtonStyle(
                              iconSize: MaterialStatePropertyAll(30),
                              iconColor: MaterialStatePropertyAll(Colors.white),
                            ),
                          ),
                          IconButton(
                            onPressed: () {}, 
                            icon: const Icon(Icons.favorite_border),
                            style: const ButtonStyle(
                              iconSize: MaterialStatePropertyAll(30),
                              iconColor: MaterialStatePropertyAll(Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: const Text(
                            'BALI', 
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 36, 
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 8, 0, 4),
                          child: const Text(
                            'Indonesia', 
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 18, 
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon( Icons.star, size: 20, color: Colors.amber,),
                            Icon( Icons.star, size: 20, color: Colors.amber,),
                            Icon( Icons.star, size: 20, color: Colors.amber,),
                            Icon( Icons.star, size: 20, color: Colors.amber,),
                            Icon( Icons.star_half, size: 20, color: Colors.amber,),
                            
                          ],
                        )
                      ],

                    ) ,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 280,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 30, 16, 30),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 231, 233, 235),
                //color: Color(0xFFF2F5FA),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {

                            setState(() {
                              val=0;
                            //print(val);
                            });
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.fromLTRB(28, 12, 28, 12),
                            ),
                            foregroundColor: MaterialStateProperty.all(Colors.black),
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder> (
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: Text(AppLocalizations.of(context)!.hotel, style:const TextStyle(fontSize: 16),),
                        ),

                        ElevatedButton(
                          onPressed: () {

                            setState(() {
                              val=1;
                            //print(val);
                            });
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.fromLTRB(28, 12, 28, 12),
                            ),
                            foregroundColor: MaterialStateProperty.all(Colors.black),
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder> (
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: Text(AppLocalizations.of(context)!.food, style:const TextStyle(fontSize: 16),),
                        ),

                        ElevatedButton(
                          onPressed: () {

                            setState(() {
                              val=2;
                            //print(val);
                            });
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.fromLTRB(28, 12, 28, 12),
                            ),
                            foregroundColor: MaterialStateProperty.all(Colors.black),
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder> (
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child:Text(AppLocalizations.of(context)!.activities, style:const TextStyle(fontSize: 16),),
                        ),

                      ]
                    ),
                    if(val==0)  Container(
                      margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            imageInfoMethod("images/bali.jpg"),
                            imageInfoMethod("images/bali.jpg"),
                            imageInfoMethod("images/bali.jpg"),
                          ],
                        ),
                      ),
                    ),
                    if(val==1) Container(
                      margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            imageInfoMethod("images/room.jpg"),
                            imageInfoMethod("images/bali.jpg"),
                            imageInfoMethod("images/room.jpg"),
                          ],
                        ),
                      ),
                    ),
                    if(val==2) Container(
                      margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            imageInfoMethod("images/room.jpg"),
                            imageInfoMethod("images/room.jpg"),
                            imageInfoMethod("images/room.jpg"),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                        AppLocalizations.of(context)!.detail, 
                        style:const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      ),

                    if (val==0) Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: const Text(
                        'Surrounded by rice fields, Villa Kayu Lama offers a peaceful retreat in Ubud. Guests can take a leisurely swim in the private...',
                        style: TextStyle(fontSize: 16, ),
                      ),
                    ),

                    if (val==1) Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: const Text(
                        'Surrounded by rice fields, Guests can take a leisurely swim in the private... Surrounded by rice fields, Guests can take a leisurely swim in the private...',
                        style: TextStyle(fontSize: 16, ),
                      ),
                    ),

                    if (val==2) Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: const Text(
                        'Villa Kayu Lama offers a peaceful retreat in Ubud. Guests can take a leisurely swim in the private...',
                        style: TextStyle(fontSize: 16, ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(_createRoute2());

                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.fromLTRB(60, 14, 60, 14),
                            ),
                            foregroundColor: MaterialStateProperty.all(Colors.white),
                            backgroundColor: MaterialStateProperty.all(const Color(0xFF18C0D1)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder> (
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: Text(AppLocalizations.of(context)!.continues, style:const TextStyle(fontSize: 16),)
                        )
                      ),
                    ),
                     
                  ],
                ),
              ),
            )
          )
        ],
      )
    );
  }

  Container imageInfoMethod(String imageInfor) {
    return Container(
                            margin: const EdgeInsets.only(right: 20),
                            child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              imageInfor,
                              fit: BoxFit.fill,
                              width: 190,
                              height: 250,
                            ),
                            ),
                          );
  }
}