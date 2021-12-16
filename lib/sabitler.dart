import 'package:flutter/material.dart';

Color rkZeminArkaPlan = Color.fromRGBO(29,33,54,1);
Color rkAppbarArkaPlan = Color.fromRGBO(29,33,54,1);

Color rkAktifCardBackColor = Color.fromRGBO(44,44,58,1);
Color rkPasifCardBackColor = Color.fromRGBO(50,50,68,1);

Color rkCardForeColor = Color.fromRGBO(255,255,255,1);

TextStyle stilBoyYaziStyle = TextStyle(color: rkCardForeColor, fontSize: 20);
TextStyle stilCmYaziStyle = TextStyle(color: rkCardForeColor);
TextStyle stilRakamYaziStyle = TextStyle(
  color: rkCardForeColor,
  fontSize: 50,
);

TextStyle tsActivCardColor = TextStyle(
  color: rkCardForeColor,
  fontSize: 21,
);

TextStyle tsHeightStyle = TextStyle(
  color: rkCardForeColor,
  fontSize: 65,
  fontWeight: FontWeight.bold,
);

TextStyle tsCmStyle = TextStyle(
  color: rkCardForeColor,
);

SliderThemeData stSliderTheme = SliderThemeData(
  inactiveTrackColor: Color(0xFF8D8E98),
  activeTrackColor: Color.fromRGBO(91,41,67,1),
  thumbColor: Color.fromRGBO(213,67,103,1),
  overlayColor: Color(0x29EB1555),
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
);
