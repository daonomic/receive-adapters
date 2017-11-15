pragma solidity ^0.4.11;


import '../../contracts/ERC20ReceiveAdapter.sol';
import './ReceiveAdapterMock.sol';


contract ERC20ReceiveAdapterMock is ERC20ReceiveAdapter, ReceiveAdapterMock {
}