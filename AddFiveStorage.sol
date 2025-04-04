//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

//Herdando tudo do SimpleStorage com a palavra chave "is"
contract AddFiveStorage is SimpleStorage {


    //sobrescrevendo uma função com override
    function store(uint256 _newNumber) public override  {
        myFavoriteNumber = _newNumber + 5;
      
    }

}
