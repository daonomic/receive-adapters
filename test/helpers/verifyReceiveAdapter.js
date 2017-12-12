const awaitEvent = require('@daonomic/tests-common').awaitEvent;

module.exports = async function(account, tokenContract, receiveContract, sender) {
    let token = await tokenContract.new(account, 100);
    let receiver = await receiveContract.new();
    let receivedEvent = receiver.Receive({});

    await sender(token, receiver, 10, "0xffffff");
    assert.equal(await token.balanceOf.call(receiver.address), 10);
    let result = await awaitEvent(receivedEvent);
    assert.equal(result.args.token, token.address);
    assert.equal(result.args.from, account);
    assert.equal(result.args.value, 10);
    assert.equal(result.args.data, "0xffffff");
}