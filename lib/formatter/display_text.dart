
String capitalize(String text){
  String capitalizedText;
  capitalizedText = text[0].toUpperCase() + text.substring(1);
  return capitalizedText;
}