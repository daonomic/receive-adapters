pragma solidity ^0.4.0;


import "daox-tokens/contracts/standard/NotifyingTokenImpl.sol";


contract ERC223Mock is NotifyingTokenImpl {
    function ERC223Mock(address initialAccount, uint256 initialBalance) public {
        balances[initialAccount] = initialBalance;
        totalSupply = initialBalance;
    }
}
