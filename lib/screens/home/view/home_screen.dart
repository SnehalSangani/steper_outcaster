import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steper_outcaster/screens/home/provider/home_provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  homeprovider? hptrue;
  homeprovider? hpfalse;

  @override
  Widget build(BuildContext context) {
    hpfalse = Provider.of(context, listen: false);
    hptrue = Provider.of(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("Edit your Profile"),
        ),
        body: Stepper(
          onStepTapped: (value) {
            hpfalse!.jump(value);
          },
          steps: [
            Step(
                title: Text("Prifile Picture"),
                content: ListTile(
                  title: Text("My profile"),
                  subtitle: Text("Snehal Sangani"),
                ),
                isActive: true),
            Step(
                title: Text("Name"),
                content: ListTile(
                  title: Text("Name"),
                  subtitle: Text("Snehal Sangani"),
                ),
                isActive: true),
            Step(
                title: Text("Number"),
                content: ListTile(
                  title: Text("Phone Number"),
                  subtitle: Text("8956325482"),
                ),
                isActive: true),
            Step(
                title: Text("Email"),
                content: ListTile(
                  title: Text("Email"),
                  subtitle: Text("snehalsangani@gmail.com"),
                ),
                isActive: true),
            Step(
                title: Text("DOB"),
                content: ListTile(
                  title: Text("Date of birth"),
                  subtitle: Text("18/12/2004"),
                ),
                isActive: true),
            Step(
                title: Text("Gender"),
                content: ListTile(
                  title: Text("Gender"),
                  subtitle: Text("Female"),
                ),
                isActive: true),
            Step(
                title: Text("Current Location"),
                content: ListTile(
                  title: Text("Location"),
                  subtitle: Text("104,pushpak soc,dharamnagar road"),
                ),
                isActive: true),
            Step(
                title: Text("Nationality"),
                content: ListTile(
                  title: Text("Nationality"),
                  subtitle: Text("Indain"),
                ),
                isActive: true),
            Step(
                title: Text("Language"),
                content: ListTile(
                  title: Text("Language"),
                  subtitle: Text("Gujarati,hindi"),
                ),
                isActive: true),
            Step(
                title: Text("Biography"),
                content: ListTile(
                  title: Text("Biography"),
                  subtitle: Text("Keep Smile"),
                ),
                isActive: true),
          ],
          currentStep: hptrue!.i,
          onStepContinue: () {
            setState(() {
              if(hptrue!.i<9)
                {
                  hptrue!.i++;
                }
            });
          },
          onStepCancel: () {
            setState(() {
              if(hptrue!.i>0)
                {
                  hptrue!.i--;
                }
            });
          },
        ),
      ),
    );
  }
}
