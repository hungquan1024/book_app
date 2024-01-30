import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  
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
              'NEW PASSWORD', 
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
                      'Enter your new password',
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
                      hintText: 'Enter your password',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none
                      ),
                      
                      suffixIcon: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(
                          Icons.remove_red_eye,
                        ),
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                      ),
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
                      hintText: 'Re-enter your password',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none
                      ),
                      
                      suffixIcon: IconButton(
                        onPressed: () {}, 
                        icon: const Icon(
                          Icons.remove_red_eye,
                        ),
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
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
                        onPressed: () {}, 
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
                    child: const Text('Submit', style: TextStyle(fontSize: 16),)
                )
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