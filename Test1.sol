pragma solidity ^0.4.19;


contract Test1 {
    bytes32 _originalHash;
    
    constructor(uint _originalDigit) public {
        _originalHash = getHash(_originalDigit);
    }

    function hash(uint originalValue) public view returns (bool) {
	    bytes32 newHash = getHash(originalValue);
	    if (newHash == _originalHash)
	    {
	        return true;
	    }
	    else
	    {
	        return false;
	    }
    }
    
    function getHash(uint value) private pure returns (bytes32) {
        return sha256(abi.encodePacked(value));
    }
}