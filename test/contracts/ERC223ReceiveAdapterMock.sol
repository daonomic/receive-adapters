pragma solidity ^0.4.11;


import '../../contracts/ERC223ReceiveAdapter.sol';
import '../../contracts/TestReceiveAdapter.sol';


contract ERC223ReceiveAdapterMock is ERC223ReceiveAdapter, TestReceiveAdapter {
}