pragma solidity ^0.4.0;

contract HelloWorldContract{
    string word = "Hello World";
    
    function getWord() constant returns(string){
        return word;
    }
    
    function setWord(string newWord) returns(string){
        word = newWord;
        return word;
    }
}

//run this tests at https://ethereum.github.io/browser-solidity/#version=soljson-v0.4.13+commit.fb4cb1a.js