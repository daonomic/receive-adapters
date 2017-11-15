pragma solidity ^0.4.18;


import "../../contracts/TokenReceiver.sol";
import "../../zeppelin-solidity/contracts/token/StandardToken.sol";


contract ERC223Impl is StandardToken {
    event Transfer(address indexed from, address indexed to, uint256 value, bytes data);

    function transfer(address _to, uint256 _value, bytes _data) public returns (bool) {
        return transferAndCall(_to, _value, _data);
    }

    function transferAndCall(address _to, uint256 _value, bytes _data) public returns (bool) {
        require(_to != address(0));
        require(_value <= balances[msg.sender]);

        // SafeMath.sub will throw if there is not enough balance.
        balances[msg.sender] = balances[msg.sender].sub(_value);
        balances[_to] = balances[_to].add(_value);
        emitTransferWithData(msg.sender, _to, _value, _data);
        TokenReceiver(_to).onTokenTransfer(msg.sender, _value, _data);
        return true;
    }

    function emitTransfer(address _from, address _to, uint256 _value) internal {
        emitTransferWithData(_from, _to, _value, "");
    }

    function emitTransferWithData(address _from, address _to, uint256 _value, bytes _data) internal {
        Transfer(_from, _to, _value, _data);
        Transfer(_from, _to, _value);
    }
}
