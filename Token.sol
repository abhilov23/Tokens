pragma solidity ^0.8.4;
contract Token{
string public name ='My hardhat Token';
string public symbol = 'MHT';
uint public totalSupply = 1000000;
address public owner;
mapping(address => uint) balances;

constructor(){
balances[msg.sender] = totalSupply;
owner = msg.sender;
}

function transfer(address to, uint amount) external{
require(balances[msg.sender] >= amount, 'not enough tokens');
balances[msg.sender] -= amount;
balances[to] += amount;
}

function balanceOf(address account) external view returns(uint){
return balances[account];
}
}
