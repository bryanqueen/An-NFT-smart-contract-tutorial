//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0 //Solidity VERSION

//IMPORTING OPENZEPPELIN, THIS IS A GROUP OF RESOURCE WHERE OUR SMART CONTRACTS WILL INHERIT FROM

import 'openzeppein/contracts/token/ERC721/ERC721.sol';
import 'openzeppein/contracts/access/Ownable.sol';

//Here is the contract below. The contract is named NftContract

contract NftContract is ERC721, Ownable {
    //SOME VARIABLES ARE TO BE CREATED FIRT THING FIRST.
    //WHEN CREATING A VARIABLE THAT WILL STORE AN INTEGER, WE SHOULD DO WELL TO USE THIS VARIABLE SELECTOR CALLED (uint256)
    //uint256 IS PREFERRED TO BE USED BECAUSE IT CAN STORE A VERY LARGE SIZE OF DATA

    uint256 public cost = 0.06 ether        //THIS IS VARIABLE SHOWS THE COST PER NFT
    uint256 public currentSupply;           //THIS VARIABLE KEEPS THE CURRENT AMOUNT OF SUPPLY AVAILABLE
    uint256 public totalSupply;             //THIS VARIABLE KEEPS TRACK OF THE TOTAL NUMBER OF SUPPLIES
    bool public isMintEnabled;              //IT DETERMINES WHEN PEOPLE CAN MINT THE TOKENS
    mapping (address => uint256) public mintedWallets;       //IT KEEPS TRACK OF THE NUMBER OF TOKENS A WALLET HAS MINTED
}