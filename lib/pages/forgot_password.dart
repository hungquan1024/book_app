import 'package:booking_app_demo/pages/login.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  
  @override
  Widget build(BuildContext context) {

    return Scaffold (
      resizeToAvoidBottomInset: false,
      body: Container(
      padding: const EdgeInsets.fromLTRB(30, 90, 30, 0),
      decoration: const BoxDecoration(
        color: Color(0xFFF2F5FA),
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'FORGOT PASSWORD?', 
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: const Center(
                    child: Text(
                      'Type your phone number to reset your password',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
          
              
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: TextField(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      // contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      contentPadding: const EdgeInsets.all(16),
                      hintText: 'Enter your phone number',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none
                      ),
                    ),
                  ),
                ),
          
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: () {

                          Navigator.of(context).push(_login());

                        }, 
                        child: const Text('Back to login', style: TextStyle(color: Colors.black, fontSize: 16),),
                      ),
                      
                    ],
                  ),
                ),
                
                Center( 
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.fromLTRB(50, 14, 50, 14),
                      ),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(const Color(0xFF18C0D1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder> (
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    child: const Text('Continue', style: TextStyle(fontSize: 16),)
                  ),
                ),

              ],
            ),
          )
        ],
      ),
              ),
    );
  }
}

Route _login() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Login(),
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