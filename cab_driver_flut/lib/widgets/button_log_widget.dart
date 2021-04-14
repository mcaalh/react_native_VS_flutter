import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonLogWidget extends StatelessWidget {
  ButtonLogWidget({
    @required this.labelText,
    @required this.clickAction,
    @required this.registerType,
    @required this.routeNav,
  });

  final String labelText;
  final Function clickAction;
  final bool registerType;
  final Function routeNav;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          )),
          onPressed: clickAction,
          child: Container(
            height: 50,
            child: Center(
              child: Text(
                labelText,
                style: TextStyle(fontSize: 18, fontFamily: 'Brand-Bold'),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextButton(
          style: TextButton.styleFrom(primary: Colors.black),
          onPressed: routeNav,
          child: Text(registerType
              ? 'Already have v cab account, SignIn'
              : 'Don\'t have account yet? sign up here'),
        ),
      ],
    );
  }
}
