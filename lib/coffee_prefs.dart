import 'package:coffee_page/style_body_text.dart';
import 'package:coffee_page/style_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {

  int strength = 1;
  int sugars = 1;

  void increaseStrength(){
    setState(() {
     strength = strength < 6 ? strength + 1 : 1;
    });
  }

  void increaseSugars(){
      setState(() {
       sugars = sugars < 6 ? sugars + 1 : 0;
      });
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            const StyledBodyText('Strength: '),

              for( int i= 0; i<strength; i++)
            Image.asset('assets/images/coffee_bean.png',
            width:25),

           const Expanded (child: SizedBox()),
            StyledButton(onPressed: increaseStrength, child:const Text('+'))
          ],
        ),
        Row(
          children: [
            const Text('Sugars: '),
             if(sugars == 0)
              const Text('No sugars...'),
            for( int i= 0; i < sugars; i++)
             Image.asset('assets/images/sugar_cube.png',
            width:25),
             const Expanded (child: SizedBox()),
            StyledButton(onPressed: increaseSugars, child:const Text('+'))
          ],
        ),
      ],
    );
  }
}