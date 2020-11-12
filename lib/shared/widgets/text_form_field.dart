import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:educruise/views/login/login_model.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController formText;
  final loginModel;
  final maxLines;
  final Function onSaved;
  final IconData icon;
  final String text;
  final bool obscuredText;
  final TextInputType textInputType;
  CustomTextField({
    this.maxLines,
    this.textInputType,
    this.onSaved,
    this.formText,
    this.loginModel,
    this.icon,
    this.obscuredText,
    this.text,
    Key key,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxLines ?? 1,
      keyboardType: widget.textInputType,
      onSaved: widget.onSaved,
      controller: widget.formText,
      obscureText: widget.obscuredText,
      decoration: InputDecoration(
          prefixIcon: Icon(
            widget.icon,
            color: Colors.grey[600],
          ),
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(20.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(20.0),
            ),
            borderSide: BorderSide(color: appTheme.primaryColor, width: 1),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[600]),
          hintText: widget.text,
          fillColor: appTheme.backgroundColor),
      validator: widget.loginModel.validate(),
    );
  }
}
