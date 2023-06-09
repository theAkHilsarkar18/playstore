
import 'package:flutter/material.dart';
import 'package:playstore/screen/appscreen/view/appscreen.dart';
import 'package:playstore/screen/basescreen/provider/baseprovider.dart';
import 'package:playstore/screen/basescreen/view/basescreen.dart';
import 'package:playstore/screen/gamescreen/tabscreen1/foryouscreen/view/foryouscreen.dart';
import 'package:playstore/screen/gamescreen/tabscreen2/topchartscreen/view/topviewscreen.dart';
import 'package:playstore/screen/openscreen/view/openscreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Baseprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Basescreen(),
          'foryou' : (context) => Foryouscreen(),
          'topview' : (context) => Topviewscreen(),
          'app' : (context) => Appliactionscreen(),
          'open' : (context) => Openscreen(),
        },
      ),
    ),
  );
}