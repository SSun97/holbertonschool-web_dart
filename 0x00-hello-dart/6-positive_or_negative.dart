void main(List<String> args) {
  var number = int.parse(args[0]);
  /*
  Write Your code below 
   */
   if (number > 0) {
     print("$number is Positive");
   } else if (number < 0) {
     print("$number is Negative");
   } else {
     print("$number is Zero");
   }
}