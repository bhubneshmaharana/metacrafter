// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//write function to fing the sum , sub,div and product o two numbers
contract arthmetic{

//declaring the state variables for the function 
   uint private a;
   uint private b;

//intiallising the value of the two numbers
   function set(uint _a,uint _b) public {
      a = _a ;
      b = _b ;
   }

// add function to give the sum of two numbers
   function add() public view  returns  (uint){
      return a+b;
   }

// sub function to give the difference of two numbers   
   function sub() public view  returns  (uint){
      return a>b ? a-b : b-a ;
   }

// product function to give the product of two numbers
   function product() public view returns (uint){
      return a*b;
   }

// div function to give the division of two numbers
   function div() public view returns (uint){
      return a/b;
   }

}

