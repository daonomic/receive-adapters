pragma solidity ^0.4.18;


import "../../daox-tokens/contracts/standard/TokenImpl.sol";


contract ERC20Mock is TokenImpl {
    function ERC20Mock(address initialAccount, uint256 initialBalance) public {
        balances[initialAccount] = initialBalance;
        totalSupply = initialBalance;
    }
}
