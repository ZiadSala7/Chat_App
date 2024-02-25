import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldModel extends StatelessWidget {
  final bool secure;
  final IconButton? suffixicon;
  // ignore: non_constant_identifier_names
  final Function(String) OnChange;
  var txtcontroller = TextEditingController();
  TextFormFieldModel({
    super.key,
    this.suffixicon,
    required this.secure,
    // ignore: non_constant_identifier_names
    required this.OnChange,
  });

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: OnChange,
          obscureText: secure,
          style: const TextStyle(
            color: Color.fromARGB(255, 5, 0, 0),
          ),
          decoration: InputDecoration(
            suffixIcon: suffixicon,
            border: const OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
