pragma solidity ^0.4.11;


import '../../contracts/EtherReceiveAdapter.sol';
import '../../contracts/TestReceiveAdapter.sol';


contract EtherReceiveAdapterMock is EtherReceiveAdapter, TestReceiveAdapter {
}