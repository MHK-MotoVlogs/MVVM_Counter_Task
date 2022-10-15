import 'dart:math';

import 'package:flutter/foundation.dart';

class  MyHomePageViewModel extends ChangeNotifier{
  int count=0;
  int backgroundColorIndex=0;
  int exsistingBackgroundColorIndex=0;

   increment(){
     if(count<10){
       count+=1;
       if(count==10){
        randomBackgroundIndexGenerator();
       }
     }
     else if(count>=10 && count<100){
       count+=10;
       if(count==100){
         randomBackgroundIndexGenerator();
       }
     }
     else if(count>=100 && count<1000){
       count+=100;
       if(count==1000){
         randomBackgroundIndexGenerator();
       }
     }
     else if(count>=1000 && count<10000){
       count+=1000;
       if(count==10000){
         randomBackgroundIndexGenerator();
       }
     }
     else if(count>=10000 && count<100000){
       count+=10000;
       if(count==100000){
         randomBackgroundIndexGenerator();
       }
     }
     else{
       count+=10000;
     }
    notifyListeners();
   }

   void randomBackgroundIndexGenerator(){
     backgroundColorIndex=Random().nextInt(10);
     while(exsistingBackgroundColorIndex==backgroundColorIndex){
       backgroundColorIndex=Random().nextInt(10);
     }
     exsistingBackgroundColorIndex=backgroundColorIndex;
   }

}

