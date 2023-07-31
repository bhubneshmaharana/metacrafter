// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract array_operation{ 
    
    //declaring static array 
    uint[5] staticArr = [1,2,3,4,5];

    //declaring dynamic array
    uint[]  dynamicArr = [6,7,8];


 function operation() external {

 
//operations on the array 
    
    //insertion of the element at end
    dynamicArr.push(9);

    //accessing the element at index

        //rewrite the data at a index
         dynamicArr[0]=10;

        //delete the the data at the index and reset to default 
         delete dynamicArr[2]; 

    //deletion of the last element 
    dynamicArr.pop();

    //length of the array 
    uint len = dynamicArr.length;

   // creating a temporary array in memmory 
   //this memory is static 
   uint[] memory memo = new uint[](len);
   memo[0]=10;
   memo[1]=20;
}
   //returning the string from the function
   
   function string_return() external view returns(uint[] memory){

    return dynamicArr;
   }
}






contract StudentData{

    struct Student{
        string name;
        uint enr_no;
        uint year;
    }

    //declasing structure as state varible 
    Student public s1;

    //declaring structure as array variable 
    Student[] public students;

    //mapping 
    mapping (uint => Student[]) public StudentByYear;
 
 //pure : used when dont have to read the enviroment variables 
 //view : used when dont have to modify the state variables 
    function intitallisation() external {
    //intiallising the structure
    //M-1: passing the parameters
    Student memory S2 = Student("Rahul",2203031240166,2002);
    //M-2: passing key-value pairs
    Student memory S3 = Student({enr_no : 2203031240122 , name : "roy" ,year : 2001});
    //M-3: default values 
    Student memory S4;
    S4.name="bhubnesh";
    S4.year=2002;
    S4.enr_no=2203031240111;

 //so the values intiallised in memory will we removed from the memory on rthe finction is execyted 
 // thus we have to push the structure objects to the access them 

 //we pushed them to structure the arrya variable object i.e.studnts  
    students.push(S2);
    students.push(S3);
    students.push(S4);


//intiallising and defining in one line
 students.push(Student("chiku",0,2010)) ;

//accessing the declared objects
 Student storage temp = students[3];

 //modifing the declared object 
 temp.enr_no=2203031240177;

//deleting the decared objects
 delete temp.enr_no;
 delete students[3];

//NOTE:
  // here memory is used as we are only accessing the state variable not mutating them 
  //MEMEORY : data is only used for temporary purpose
  // any changes will be undone after the function is executed 


  // we have to use storage if we want to update and mutate the state varibles 

    }
}



contract Mapping{
    //Mapping
    //how to declare mapping( nested and simple )
    //operations on mapping i.e.Get ,Set ,Delete
    

   // {"miku" ,"chiku" ,"diku"}
    //to check leny is present or not we will iterate through the whole list
    // we have to ittere the whole list 
    //but throught mapping we can do that in on go
  //  {"miku":true , "chiku":true , "diku":true}

        //mapping(keyType => valueType) public myMapping;
    mapping (address => uint) public name;

    //nested mapping
    mapping (address => mapping (address => uint)) public isFriend;

    function map() public {
        //set the value of the mapping
        name[msg.sender] = 123;

        //access the value of the mappin set 
        uint bal = name[msg.sender];

        //access the value of the mappin not set
        uint bal2 = name[1]; //0

        name[msg.sender] += 456 ; // 123 + 456
    }

    
}
// Simple contract to demonstrate mapping in Solidity

contract MappingExample {
    // Mapping to store addresses and their corresponding balances
    mapping(address => uint256) public balances;

    // Function to update the balance for a given address
    function updateBalance(address account, uint256 newBalance) public {
        balances[account] = newBalance;
    }

    // Function to get the balance for a given address
    function getBalance(address account) public view returns (uint256) {
        return balances[account];
    }
}


contract GasAndGasPrice{

/*
Gas :  unit of compution to ,required to perform a transaction or operation on blockchain network
-Purpose:|to avoid the the Infinite Loops and Resourse Exaustion 
         |Detrministic Xxecution , result in same output in all nodes
         |Resourse Allocation , such as computstion power and storage ,to execute smart contract 
         |Fair and Network Stability , all participants pay for comutational resourse 
                                      avoid DoS(denial-of-service) attack : where attacker flood the network with 
                                                                            resourse intese work without paying the cost

-Gas limit: max gas willing to use 
-Gas price: how much eather you are willing to pay for 1 gas
-Ether = Gas Limit X Gas Price
-Gas limit -> computation
-Gas Price -> Ether -> 1/Time

- if amout of gas is insufficient to complet a transaction then 
  the transaction will be stoped and any changes to state variable will be undone



*/
}





// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ComplexContract {
    uint256 public result;

    function performComplexOperation() public {
        // Assume some complex logic here
        // For simplicity, we'll just set the result to a fixed value.
        result = 42;
    }
}

contract ComplexOperation {
    ComplexContract public complexContract;

    constructor(address _complexContract) {
        complexContract = ComplexContract(_complexContract);
    }

    function performComplexOperationInLoop() public {
        for (uint256 i = 0; i < 100; i++) {
            complexContract.performComplexOperation();
        }
    }
}
