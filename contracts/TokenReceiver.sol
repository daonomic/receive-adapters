pragma solidity ^0.4.18;


contract TokenReceiver {
    function onTokenTransfer(address _from, uint256 _value, bytes _data) public;
}