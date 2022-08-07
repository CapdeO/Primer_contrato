pragma solidity ^0.8.15;

contract Contador {

    uint256 count;

    constructor (uint256 _count) {
        count = _count;
    }
    //setter
    function setCount(uint256 _count) public {
        count = _count;
    }

    function incrementCount() public {
        count += 1;
    }
    //getter
    //view: palabra reservada que indica que sólo hace lectura y no escritura de las variables de estado del contrato
    //returns: siempre que hagamos una función del tipo getter hay que poner returns para que se sepa el tipo de valor que va a ser devuelto
    function getCount() public view returns(uint256) {
        return count;
    }
    //pure: no va a leer ni escribir ninguna variable de estado del contrato. Es más restrictiva que el view
    //ni view ni pure consumen gas
    function getNumber() public pure returns(uint256) {
        return 34;
    }
}