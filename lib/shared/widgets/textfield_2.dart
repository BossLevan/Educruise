import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:flutter/material.dart';

class CustomTextField2 extends StatefulWidget {
  final labelText;
  final model;
  final Function onSaved;
  CustomTextField2({
    this.labelText,
    this.model,
    this.onSaved,
  });
  @override
  _CustomTextField2State createState() => _CustomTextField2State();
}

class _CustomTextField2State extends State<CustomTextField2> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // maxLines: widget.maxLines ?? 1,
      // keyboardType: widget.textInputType,
      onSaved: widget.onSaved,
      // controller: widget.formText,
      // obscureText: widget.obscuredText,
      decoration: InputDecoration(
          labelText: widget.labelText ?? '',
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
            borderSide: BorderSide(color: appTheme.primaryColor, width: 1),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[600]),
          //hintText: widget.text,
          fillColor: appTheme.backgroundColor),
      //validator: widget.model.validate(),
    );
  }
}
