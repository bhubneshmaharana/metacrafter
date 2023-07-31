// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract Storage {

   uint public a;
   int public b;
   bool public c;
   address public d;


    // takes a value _number and assigns it to the state variable number
    function set(uint _a,int _b,bool _c,address _d) public {
        a= _a;
        b=_b;
        c=_c;
        d=_d;
        

    }

    // returns the value of the state variable number
    function get() public view returns(uint,int,bool,address) {
        return (a,b,c,d);
    }
 }

