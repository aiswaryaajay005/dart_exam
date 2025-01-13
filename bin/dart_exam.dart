import 'dart:io';
//void main(){
//--------------SECTION A-------------
/* 
 1.Write a Dart program to declare a Map with the following key-value pairs:
  Key:"name",Value: "John"
  Key:"age",Value: 30
  Key:"isStudent", Value: false
 Print each key-value pair. */

//  Map exMap={"Name":"John","Age":"30","isStudent":"false"};
//  print(exMap);
//  print(exMap["Name"]);
//  print(exMap["Age"]);
//  print(exMap["isStudent"]);

//-------------------------------------------------------------------------------

//2. Write a Dart program that prints
// all even numbers from 1 to 20 using a for loop

// int num=20;
//print("Even numbers from 1 to 20 are:")
// for(int i=1;i<=num;i++){
//   if(i%2==0){
//     print(i);
//   }
// }

//---------------------------------------------------------------------------

/* 4· Write a program that takes a number as input and checks:
  Ifthenumberisdivisible by 3, print "Fizz".
  Ifthenumberisdivisible by 5, print "Buzz".
  Ifdivisible by both, print "FizzBuzz".
 Otherwise, print the number. */

//  stdout.write("Enter a number:");
//  int num1=int.tryParse(stdin.readLineSync()!)?? 2;
//  if(num1%3==0 && num1%5==0){
//   print("FizzBuzz");
//  }
//  else if(num1%5==0){
//   print("Buzz");
//  }
//  else if(num1%3==0){
//    print("Fizz");
//  }
//  else{
//   print("$num1");
//  }

//------------------------------------------------------------------------------

/*6.Use a for loop to generate the following pattern:
 1
 2 2
 3 3 3
 4 4 4 4 */

//  stdout.write("Enter a number:");
//  int num2=int.tryParse(stdin.readLineSync()!) ?? 3;
//  for(int row=1;row<=num2;row++){
//   for(int col=1;col<=row;col++){
//     stdout.write("$row ");
//   }
//   print("");
//  }

//--------------------------------------------------------------------

//3.Using a for loop, calculate and 
//print the sum of all numbers in the list [10, 20, 30, 40, 50]
// List<int> l1=[10,20,30,40,50];
// int len=l1.length;
// int sum=0;
// for(int i=0;i<len;i++){
//   sum+=l1[i];
// }
// print(sum);

//---------------------------------------------------------------------
//}
/* 5.Write a function named findLargest that accepts a List<int> as a parameter and returns the
 largest number in the list.
 Example:
 Input: [12, 45, 7, 89, 23]
 Output: 89*/

//  void main(){
//   List<int> list1=[12,45,70,89,23];
//   int largest=findLargest(list1);
//   print("The largest number in the ist $list1 is $largest");
//  }
//  int findLargest(List l1){
//   int len=l1.length;
//   int lar=l1[1];
//   for(int i=0;i<len;i++){
    
//     if(l1[i] > lar){
//       lar=l1[i];
//     }
//   }
// return lar;
//  }

//-----------------------------------------------------------------------
//-----------------------------------------------------------------------

