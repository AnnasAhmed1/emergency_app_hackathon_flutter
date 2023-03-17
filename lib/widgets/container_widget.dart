import 'package:flutter/material.dart';

import 'text_widget.dart';

ContainerWidget({
  text = "",
  onTap,
}) {
  return Builder(
    builder: (context) => GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.all(10.0),
        color: Theme.of(context).primaryColor,
        width: MediaQuery.of(context).size.width * 0.40,
        // height: 150,
        child: textWidget(
          data: text,
          fontSize: 25.0,
          center: true,
        ),
        // height: MediaQuery.of(context).size.height * 0.33,
      ),
    ),
  );
}
