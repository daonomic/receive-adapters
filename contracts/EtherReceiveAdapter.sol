pragma solidity ^0.4.11;

import './ReceiveAdapter.sol';

contract EtherReceiveAdapter is ReceiveAdapter {
    function () payable public {
        receiveEtherAndData("");
    }

    function receiveEtherAndData(bytes _data) payable public {
        onReceive(address(0), msg.sender, msg.value, _data);
    }
}