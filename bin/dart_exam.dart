import 'dart:io';
// void main(){
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
// print("Even numbers from 1 to 20 are:");
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
// }
/* 5.Write a function named findLargest that accepts a List<int> as a parameter and returns the
 largest number in the list.
 Example:
 Input: [12, 45, 7, 89, 23]
 Output: 89*/

//  void main(){
//   List<int> list1=[120,45,7,89,23];
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
//Section b----------
  //1. Write a program to print the following pattern:
  /* 
        * * * * * * * * * 
          *           *   
            *       *     
              *   *       
                *
              *   *
            *       *
          *           *
        * * * * * * * * *
*/
// void main(){

//   for(int row=1;row<=9;row++){
//     for(int col=1;col<=9;col++){
//       if(row==col || row==1 || row==9 || row+col==10){
//   stdout.write("* ");}
//   else{
//     stdout.write("  ");
//   }}
//   print("");
// }

// }

// ---------------------------------------------------------------------------

/*2.Write a Dart  program that accepts integers into a list until 0 is entered.
 Generate separate
 lists for odd and even numbers from that list and Print the greatest number in
 the main list. */
 

//  void main(){
//   List<int> input=[];
//   List<int> even=[];
//   List<int> odd=[];
//   print("Enter the list elements(Want to exit click 0):");
//   for(;;){
//    int num=int.parse(stdin.readLineSync()!);
//    if(num == 0){
//     break;
//    }else{
//     input.add(num);
//     if(num %2 ==0){
//      even.add(num);
//     }else{
//       odd.add(num);
//     }
//    }
//   }
//     print("The main list is :$input");
//     print("The list of even  numbers from main list is $even");
//     print("The list of odd numbers from main list is $odd");
//     int largest=input[0];
//      int len=input.length;

//   for(int i=0;i<len;i++){
    
//     if(input[i] > largest){
//       largest=input[i];
//     }
//  }
//  print("The largest element in the main list $input is $largest");
//  }

//--------------------------------------------------------------------------------

/*3.Create a console-based Library Management System with the following
 functionalities:
 sample output :
Welcome to the Library Management System!
 Choose an option:
 1. AddBook
 2. Edit Book
 3. Delete Book
 4. Get All Books
 Enter your choice (1-4): 1
 Enter book title: The Great Gatsby
 Enter book author: F. Scott Fitzgerald
 Book added successfully!
 Doyouwanttocontinue? (yes/no): yes
 Choose an option:
 1. AddBook
 2. Edit Book
 3. Delete Book
 4. Get All Books
 Enter your choice (1-4): 4--- List of Books--
1. Title: The Great Gatsby, Author: F. Scott Fitzgerald
 Doyouwanttocontinue? (yes/no): no
 Thank you for using the Library Management System. Goodbye */
void main(){
  List<Map> books=[];
  print("Welcome to the Library Management System!");
  
  for(;;){
  print("""Choose an option:
  1. Add Book
  2. Edit Book
  3. Delete Book
  4. Get All Books""");
  stdout.write("Enter your choice:");
  int ? input = int.tryParse(stdin.readLineSync()!);
  
  switch(input){
    case 1:
        Map newBook=addBook();
    books.add(newBook);
    print(books);
    break;
    case 2:
       editBook(books);
       print("Book added successfully");
       break;
    case 3:
         deleteBook(books);
         break;
    case 4:
         getAllBooks(books);
         break;
    default:
     print("Enter a valid choice");
     break;

  }
 

  stdout.write("Do you want to continue? (yes/no):");
  String? userChoice=stdin.readLineSync()!;
  if(userChoice.toLowerCase() != 'no' && userChoice.toLowerCase() != 'yes'){
    print("Invalid character! Enter yes or no to continue ");
     stdout.write("Do you want to continue? (yes/no): ");
  userChoice = stdin.readLineSync();
  }
  if(userChoice?.toLowerCase() == 'no'){
    print("Thank you for using the Library Management System. Goodbye!");
    break;
  }
  }
  
}
Map addBook(){
stdout.write("Enter book title:");
String bookName=stdin.readLineSync()!;
stdout.write("Enter book author:");
String authorName=stdin.readLineSync()!;
Map newBook={"name": bookName , "author": authorName};
return newBook;
}
void editBook(List<Map> books){
  print("EXISTING BOOK DETAILS:");
  for(int i=0;i<books.length;i++){
  print("Book at index $i: \n Title: ${books[i]["name"]} \n Author: ${books[i]["author"]}");
}
  stdout.write("Enter index of the value to be edited:");
  String index=stdin.readLineSync()!;
  int ind=int.parse(index);
  if(ind < -1 || ind>books.length){
    print("Enter a valid index");
    return;
  }else{
    print("------PREVIOUS BOOK DETAILS------");
    print("Name: ${books[ind]["name"]} \n Author: ${books[ind]["author"]}");
  stdout.write("Enter the new book title:");
  String newName=stdin.readLineSync()!;
  stdout.write("Enter the author name:");
  String newAuthor=stdin.readLineSync()!;
  books[ind]["name"]=newName;
  books[ind]["author"]=newAuthor;
 
  }
  print("Edited successfully");
   print("------EDITED BOOK DETAILS------");
    print("Title: ${books[ind]["name"]}\nAuthor: ${books[ind]["author"]}");
    
  
}
void deleteBook(List<Map> books){
for(int i=0;i<books.length;i++){
  print("Book at index $i: \n Title: ${books[i]["name"]} \n Author: ${books[i]["author"]}");
}
stdout.write("Enter index of the value to be deleted:");
  String index=stdin.readLineSync()!;
  int ind=int.parse(index);
  if(ind < -1 || ind>books.length){
    print("Enter a valid index");
    return;
  }else{
    books.removeAt(ind);
    print("Value deleted successfully");
  }
}
void getAllBooks(List<Map> books){
  print("--- List of Books--");
for(int i=0;i<books.length;i++){
  print("Book ${i+1}: \n Title: ${books[i]["name"]} \n Author: ${books[i]["author"]}");
}
}

//-------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------