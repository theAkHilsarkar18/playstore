
import 'package:flutter/material.dart';
import 'package:playstore/utils/images/apps/appimages.dart';

class Appliactionscreen extends StatefulWidget {
  const Appliactionscreen({Key? key}) : super(key: key);

  @override
  State<Appliactionscreen> createState() => _AppliactionscreenState();
}

class _AppliactionscreenState extends State<Appliactionscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        height: 583,
        width: double.infinity,
        child: Column(
          children: [
            Container(height:210,child: ListView.builder(itemBuilder: (context, index) => appAdBox(appImage1[index],appLogo1[index],appName1[index]),itemCount: 3,shrinkWrap: true,physics: BouncingScrollPhysics(),scrollDirection: Axis.horizontal)),
          ],
        ),
      ),
    ),);
  }

  Widget appAdBox(String path,String logo,String name)
  {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 150,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("${path}",fit: BoxFit.cover)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(height:50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("${logo}",fit: BoxFit.cover,))),
            SizedBox(width: 10,),
            Column(
              children: [
                Text("${name}"),
              ],
            ),
          ],
        ),
      ],
    );
  }


}
