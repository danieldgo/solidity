pragma solidity ^0.4.0;

contract CustodialContract{
    address client;
    bool _switch = false;
    
    function CustodialContract(){
        client = msg.sender;    
    }
    
    modifier ifClient(){
        if(msg.sender != client){
            throw;
        }else{
            _;
        }
    }
    
    function depositFunds() payable{
    }
    
    function witdrawFunds(uint amount) ifClient{
        if(client.send(amount)){
            _switch = true;
        }else{
            _switch = false;
        }
    }
    
    function getFunds() constant returns(uint){
        return this.balance;
    }
}

//run this tests at https://ethereum.github.io/browser-solidity/#version=soljson-v0.4.13+commit.fb4cb1a.js