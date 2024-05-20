// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract MyTest {
    uint256 public unlockedTime;
    address payable public owner;

    event Widthdrawl(uint256 amount, uint256 when);

    constructor(uint256 _unlockedTime) payable {
        require(block.timestamp < _unlockedTime);

        unlockedTime = _unlockedTime;
        owner = payable(msg.sender);
    }

    function withdraw() public {
        require(block.timestamp >= unlockedTime);
        require(msg.sender == owner);

        emit Widthdrawl(address(this).balance, block.timestamp);

        owner.transfer(address(this).balance);
    }
}
