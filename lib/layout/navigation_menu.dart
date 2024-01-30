import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';





class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
    
      child: NavigationBar(
        // overlayColor: MaterialStatePropertyAll(Colors.white),
        backgroundColor: Colors.white,
        height: 60,
        indicatorColor: const Color.fromARGB(255, 195, 195, 195),
        surfaceTintColor: Colors.white,
        destinations: [
          NavigationDestination(icon: const Icon(Icons.home), label: AppLocalizations.of(context)!.home),
          NavigationDestination(icon: const Icon(Icons.search), label: AppLocalizations.of(context)!.search),
          NavigationDestination(icon: const Icon(Icons.location_on), label: AppLocalizations.of(context)!.location),
          NavigationDestination(icon: const Icon(Icons.person), label: AppLocalizations.of(context)!.home_user),
        ],
      ),
    ) ;
  }

}