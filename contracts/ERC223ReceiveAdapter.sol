pragma solidity ^0.4.11;


import './ReceiveAdapter.sol';
import '../daox-tokens/contracts/standard/TokenReceiver.sol';

/**
 * @dev Helps to receive ERC223-complaint tokens. ERC223 Token contract should notify receiver.
 */
contract ERC223ReceiveAdapter is TokenReceiver, ReceiveAdapter {
    function tokenFallback(address _from, uint256 _value, bytes _data) public {
        onReceive(msg.sender, _from, _value, _data);
    }

    function onTokenTransfer(address _from, uint256 _value, bytes _data) public {
        onReceive(msg.sender, _from, _value, _data);
    }
}