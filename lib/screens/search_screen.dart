import 'package:flutter/material.dart';
import 'package:home_decoration/widgets/bottom_menu.dart';



class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
          children: [
            Text("Arama1", style:Theme.of(context).textTheme.headlineMedium ,
            
            ),

            Text("Arama2", style:Theme.of(context).textTheme.labelSmall ,
            
            ),

            Text("Arama3", style:Theme.of(context).textTheme.headlineSmall ,
            
            ),

            Text("Arama4", style:Theme.of(context).textTheme.bodyLarge ,
            
            ),

            Text("Arama5", style:Theme.of(context).textTheme.labelLarge ,
            
            ),
          ],







      ),
      
      
      
      
      bottomNavigationBar: const BottomMenu() ,
      
    );
    
  }
}