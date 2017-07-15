pragma solidity ^0.4.0;

contract HelloWorldContract{
    string word = "Hello World";
    address issuer;

    function HelloWorldContract(){
        issuer = msg.sender;
    }
    modifier ifIssuer(){
        if(issuer != msg.sender){
            revert();
        }else{
            _;
        }
    }

    function getWord() constant returns(string){
        return word;
    }
    
    function setWord(string newWord) ifIssuer returns(string){
        word = newWord;
        return word;
    }
}


//run this tests at https://ethereum.github.io/browser-solidity/#version=soljson-v0.4.13+commit.fb4cb1a.js