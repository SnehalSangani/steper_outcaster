import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steper_outcaster/screens/home/provider/home_provider.dart';
import 'package:steper_outcaster/screens/home/view/home_screen.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => homeprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => home(),
        },
      ),
    )
  );
}