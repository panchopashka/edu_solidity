pragma solidity ^0.4.19;


contract Test2 {
    
    address _owner;
    
    constructor() public payable{
        _owner = msg.sender;
    }
    
    function transferInEqualParts(uint256 summaryAmount, address [] recipients) public {
        uint256 part = summaryAmount/recipients.length;
        
        for (uint256 i = 0; i < recipients.length; i++) { 
            recipients[i].transfer(part);
        }  
    }
    
    function getValue() public constant  returns (uint)
    {
        return msg.value;
    }
}