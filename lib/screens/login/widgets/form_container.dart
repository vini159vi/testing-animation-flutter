
import 'package:flutter/material.dart';

import 'input_field.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        child: Column(
          children: <Widget>[
            InputField(icon: Icons.person_outline, obscure: false, hint: "Username",),
            InputField(icon: Icons.lock_outline, obscure: true, hint: "Password",),
          ],
        ),
      ),
    );
  }
}
