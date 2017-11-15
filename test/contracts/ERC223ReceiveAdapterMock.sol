pragma solidity ^0.4.11;


import '../../contracts/ERC223ReceiveAdapter.sol';
import './ReceiveAdapterMock.sol';


contract ERC223ReceiveAdapterMock is ERC223ReceiveAdapter, ReceiveAdapterMock {
}