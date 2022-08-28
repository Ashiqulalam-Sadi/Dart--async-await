//Example 1

Future<void> printDelayedMessage() {
   return Future.delayed(Duration(seconds: 4), () => print('Delayed Output.'));
}
void main() async {
await printDelayedMessage(); // will block the output until the asynchronous result
print('First output ...');
}
//(If main method used first then Future<void> printDelayedMessage()  in this code the output would be same.


/*output
Delayed Output.
First output ...
*/


----------------------------------------------------------------------------
----------------------------------------------------------------------------


//Example 2
void main() async {
   var userEmailFuture = getUserEmail();
   // register callback
   await userEmailFuture.then((userEmail) => print(userEmail));
   print('Hello');
}
// method which computes a future
Future<String> getUserEmail() {
   // simulate a long network call
   return Future.delayed(Duration(seconds: 4), () => "mukul@tutorialspoint.com");
}


/*output
mukul@tutorialspoint.com
Hello
*/


----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------


//example 3

// Future(with return type void,String), async , await

import 'dart:async';

void main() async{   //async
  print("Ready. Sing.");
  line1();
  line2();
  line3();
  print(await line4());  //await
}

Future<void> line1(){   //Future with/having a return type of void
  return Future.delayed(Duration(seconds:2),()=>print("Happy Birthday to You."));
}

Future<void> line2(){    
  return Future.delayed(Duration(seconds:4),()=>print("Happy Birthday to You."));
}

Future<void> line3(){   
  return Future.delayed(Duration(seconds:6),()=>print("Happy Birthday. Happy Birthday."));
}

Future<String> line4() async{  //Future with/having a return type of String , async
  String greeting= "Happy Birthday to You...";
  return await Future.delayed(Duration(seconds:8),()=>greeting);  //await
}


/*output
Ready. Sing.
Happy Birthday to You.
Happy Birthday to You.
Happy Birthday. Happy Birthday.
Happy Birthday to You...
*/




