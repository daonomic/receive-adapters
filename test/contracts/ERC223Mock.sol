pragma solidity ^0.4.0;


import "./ERC223Impl.sol";


contract ERC223Mock is ERC223Impl {
    function ERC223Mock(address initialAccount, uint256 initialBalance) public {
        balances[initialAccount] = initialBalance;
        totalSupply = initialBalance;
    }
}
