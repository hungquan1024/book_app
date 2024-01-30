import 'package:booking_app_demo/pages/forgot_password.dart';
import 'package:booking_app_demo/pages/home_page.dart';
import 'package:booking_app_demo/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

  final acc=TextEditingController();
  final pass=TextEditingController();

  
class Login extends StatefulWidget {
  

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold (
      
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 60, 30, 50),
              decoration: const BoxDecoration(
                color: Color(0xFFF2F5FA),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Center(
                    child: Text(
                      AppLocalizations.of(context)!.login, 
                      style:const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: TextField(
                            controller: acc,
                            decoration: InputDecoration(
                              // contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              contentPadding: const EdgeInsets.all(16),
                              labelText: AppLocalizations.of(context)!.user,
                              hintText: AppLocalizations.of(context)!.userreq,
                              labelStyle: const TextStyle(
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                                
                              )
                            ),
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: TextField(
                            controller: pass,
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                              // contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              contentPadding: const EdgeInsets.all(16),
                              labelText: AppLocalizations.of(context)!.pass,
                              hintText: AppLocalizations.of(context)!.passreq,
                              labelStyle: const TextStyle(
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {}, 
                                icon: const Icon(Icons.remove_red_eye),
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
                                onPressed: () {
                                  Navigator.of(context).push(_reg());
                                                   
                                }, 
                                child:  Text(AppLocalizations.of(context)!.reg, style:const TextStyle(color: Colors.black, fontSize: 16),),
                              ),

                              TextButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                                ),
                                onPressed: () {

                                  Navigator.of(context).push(_forgot());

                                }, 
                                child: Text(AppLocalizations.of(context)!.forgotpass, style:const TextStyle(color: Colors.black, fontSize: 16),),
                              ),
                            ],
                          ),
                        ),
                        
                        Center( 
                          child: ElevatedButton(
                            onPressed: () {
                              if(acc.text=="admin"&&pass.text=="123")
                              {
                                Navigator.of(context).push(_home());
                              }

                            },
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
                            child: Text(AppLocalizations.of(context)!.login, style:const TextStyle(fontSize: 16),)
                        )
                      ),
                      ],
                    ),
                  )
                ],              
              ),
            ),         
          ),

          Positioned(
            top: 400,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                image: DecorationImage(
                  image: AssetImage('images/bali.jpg'),
                  fit: BoxFit.fill
                ),
              ),
            )
          
          ),
        ],
      ),
    );
  }
}


Route _home() {
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
Route _reg() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Register(),
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

Route _forgot() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const ForgotPassword(),
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