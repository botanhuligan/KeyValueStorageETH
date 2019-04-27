pragma solidity ^0.5.1;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./keyvaluecontract.sol";

contract test3 {
   
    KeyValueRegister keyValueRegister;
    function addTest () public {
      keyValueRegister.add('test','test');
    }
    
    function getTest () public returns (bool result){
        return (keccak256(abi.encodePacked((keyValueRegister.getByKey('test')))) == keccak256(abi.encodePacked(('test'))) );
    }
    
}

