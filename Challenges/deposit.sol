//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.6.0 <0.9.0;
 
contract Deposit{
    
    receive() external payable{}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
    function transfer (address payable recipient, uint amount) public returns(bool){
        recipient.transfer(amount);
        return true;
    }
}
