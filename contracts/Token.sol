pragma solidity ^0.4.11;

/**
 * @dev Extract from ERC20. needed for ERC20ReceiveAdapter
 */
contract Token {
    function transferFrom(address from, address to, uint256 value) public returns (bool);
}
