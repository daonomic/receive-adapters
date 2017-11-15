pragma solidity ^0.4.18;


import "../../zeppelin-solidity/contracts/token/StandardToken.sol";


contract ERC20Mock is StandardToken {
    function ERC20Mock(address initialAccount, uint256 initialBalance) public {
        balances[initialAccount] = initialBalance;
        totalSupply = initialBalance;
    }
}
