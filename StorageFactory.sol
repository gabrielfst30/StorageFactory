//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

//Fábrica de storage
contract StorageFactory {

    //criando uma variável que armazenará várias instancias de SimpleStorage
    SimpleStorage[] public listOfSpContracts;

    //função para criar um contrato de simpleStorage
    function createSimpleStorageContract() public {
        //implementando o contract SimpleStorage
        //a palavra chave "new" sabe implantar um contrato
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSpContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Para interagir com um contrato é necessário: Address e ABI 
        // Acessando a posição do contrato e inserindo um novo número
        listOfSpContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
         // Acessando a posição do contrato e exibindo-o
         return listOfSpContracts[_simpleStorageIndex].retrieve();
    }

}