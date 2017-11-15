pragma solidity ^0.4.11;


import '../../contracts/EtherReceiveAdapter.sol';
import './ReceiveAdapterMock.sol';


contract EtherReceiveAdapterMock is EtherReceiveAdapter, ReceiveAdapterMock {
}