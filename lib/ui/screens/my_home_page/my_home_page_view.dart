import 'package:flutter/material.dart';
import 'package:mvvm_practice/core/utils/const/const_background_color.dart';
import 'package:mvvm_practice/ui/screens/my_home_page/my_home_page_view_model.dart';
import 'package:provider/provider.dart';

class MyHomePageView extends StatelessWidget {
  const MyHomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(build);
    return ChangeNotifierProvider(
      create: (_)=>MyHomePageViewModel(),
      child: Consumer<MyHomePageViewModel>(
        builder: (context,object,child){
          return Scaffold(
            backgroundColor: kScaffoldBackgroundColor[object.backgroundColorIndex],
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                object.increment();
              },
              child: Icon(Icons.add),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text(object.count.toString(),style: TextStyle(color: Colors.white,fontSize: 30.0),)),
              ],
            ),
          );
        },
      ),
    );
  }
}
