pragma solidity ^0.5.1;

contract KeyValueRegister {
    
    mapping(string => string) private keyValueRecord;

    constructor() public {}

    function add(string memory key_, string memory value_) public {
        keyValueRecord[key_]=value_;
    }
    
    function getByKey(string memory key_) public view returns(string memory value_){
        value_ = keyValueRecord[key_];
    }
    
}
