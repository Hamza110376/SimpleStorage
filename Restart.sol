// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;
 
contract SimpleStorage{
    uint256 public favouritenumber;

    mapping (string => uint256) public nameToFavouriteNumber;
 
      struct People{
        uint256 favouritenumber;
        string name;
    }
    People[] public people;
 
 
    function store (uint _favouritenumber) public{
        favouritenumber= _favouritenumber;
       
}
 
   
    function retrive() public view returns(uint256){
        return favouritenumber;
    }
    function addPerson(string memory _name, uint256 _favouritenumber) public{
        People memory newPerson= People({favouritenumber: _favouritenumber, name: _name});
        people.push(newPerson);
        nameToFavouriteNumber[_name]= _favouritenumber;
    }
 
}
