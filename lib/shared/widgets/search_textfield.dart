import 'package:educruise/shared/constants/theme/appTheme.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatefulWidget {
  final TextEditingController formText;
  final loginModel;
  final maxLines;
  final Function onSaved;
  final IconData icon;
  final String text;
  final bool obscuredText;
  final TextInputType textInputType;
  CustomSearchField({
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
  _CustomSearchFieldState createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      child: TextFormField(
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
            enabledBorder: const OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(60.0),
              ),
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(60.0),
              ),
              borderSide: BorderSide(color: appTheme.primaryColor, width: 1),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[500]),
            hintText: widget.text,
            fillColor: appTheme.backgroundColor),
        //validator: widget.loginModel.validate(),
      ),
    );
  }
}
