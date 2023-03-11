import 'package:flutter/material.dart';

class InputFeild extends StatefulWidget {
  final String hinttxt;
  final icon;
  final TextEditingController controller;
  InputFeild(this.hinttxt, this.icon, this.controller);

  @override
  State<InputFeild> createState() => _InputFeildState();
}

class _InputFeildState extends State<InputFeild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.transparent),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            blurRadius: 4,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: TextFormField(
        controller: widget.controller,
        autofocus: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffffffff),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none),
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
          prefixIcon: widget.icon,
          hintText: widget.hinttxt,
          hintStyle: TextStyle(
            fontSize: 13.0,
            fontFamily: "Poppins",
            color: const Color(0xff0e0e0e).withOpacity(0.3),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
