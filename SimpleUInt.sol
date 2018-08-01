import './Upgradable.sol';

pragma solidity ^0.4.18;

contract SimpleUInt is Upgradeable{
    uint public value;
    string public name = "SimpleUInt";

    function setValue(uint _value) public{
        value = _value;
    }
}

contract SimpleUIntV2 is SimpleUInt{

    function setValue(uint _value) public {
        value = 20*_value;
    }
}

contract SimpleUIntV3 is SimpleUIntV2{
    bool isLondonFun;

    function londonIsFun() public{
        isLondonFun = true;
    }
}
